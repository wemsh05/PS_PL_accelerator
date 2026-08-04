`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2026 03:57:34 PM
// Design Name: 
// Module Name: axi_lite_master
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axi_lite_master #(
    parameter int DATA_WIDTH = 32,
    parameter int ADDR_WIDTH = 4
)(
    // Global Clock and Reset
    input  logic                    aclk,
    input  logic                    aresetn,

    // Control Signal to Start Test Walkthrough
    input  logic                    init_transaction,
    output logic                    done,
    output logic                    error,

    // Write Address Channel
    output logic [ADDR_WIDTH-1:0]   m_axi_awaddr,
    output logic                    m_axi_awvalid,
    input  logic                    m_axi_awready,

    // Write Data Channel
    output logic [DATA_WIDTH-1:0]   m_axi_wdata,
    output logic [(DATA_WIDTH/8)-1:0] m_axi_wstrb,
    output logic                    m_axi_wvalid,
    input  logic                    m_axi_wready,

    // Write Response Channel
    input  logic [1:0]              m_axi_bresp,
    input  logic                    m_axi_bvalid,
    output logic                    m_axi_bready,

    // Read Address Channel
    output logic [ADDR_WIDTH-1:0]   m_axi_araddr,
    output logic                    m_axi_arvalid,
    input  logic                    m_axi_arready,

    // Read Data Channel
    input  logic [DATA_WIDTH-1:0]   m_axi_rdata,
    input  logic [1:0]              m_axi_rresp,
    input  logic                    m_axi_rvalid,
    output logic                    m_axi_rready
);

    // Test vectors to write and read back from reg0..reg3
    localparam logic [31:0] TEST_DATA [4] = '{
        32'h1111_2222, // Target reg0 (Address 0x0)
        32'h3333_4444, // Target reg1 (Address 0x4)
        32'h5555_6666, // Target reg2 (Address 0x8)
        32'h7777_8888  // Target reg3 (Address 0xC)
    };

    localparam logic [ADDR_WIDTH-1:0] ADDR_MAP [4] = '{
        4'h0, // reg0 [3:2] = 2'b00
        4'h4, // reg1 [3:2] = 2'b01
        4'h8, // reg2 [3:2] = 2'b10
        4'hC  // reg3 [3:2] = 2'b11
    };

    // State Machine
    typedef enum logic [2:0] {
        IDLE,
        WRITE_TX,
        WAIT_BRESP,
        READ_TX,
        WAIT_RDATA,
        DONE,
        ERROR
    } state_t;

    state_t state;
    logic [1:0] reg_idx;

    // Pulse edge detector for init_transaction
    logic init_d1;
    wire start_pulse = init_transaction && !init_d1;

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            init_d1 <= 1'b0;
        end else begin
            init_d1 <= init_transaction;
        end
    end

    // Direct interface signal assignments
    assign m_axi_wstrb = {(DATA_WIDTH/8){1'b1}}; // Full word writes

    // FSM & Channel Handshaking
    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            state         <= IDLE;
            reg_idx       <= '0;
            done          <= 1'b0;
            error         <= 1'b0;

            m_axi_awaddr  <= '0;
            m_axi_awvalid <= 1'b0;
            m_axi_wdata   <= '0;
            m_axi_wvalid  <= 1'b0;
            m_axi_bready  <= 1'b0;

            m_axi_araddr  <= '0;
            m_axi_arvalid <= 1'b0;
            m_axi_rready  <= 1'b0;
        end else begin
            case (state)

                IDLE: begin
                    done  <= 1'b0;
                    error <= 1'b0;
                    if (start_pulse) begin
                        reg_idx <= 2'b00;
                        state   <= WRITE_TX;
                    end
                end

                // Start Write: Assert both AWVALID and WVALID simultaneously
                // to match your slave's (!awready && awvalid && wvalid) check
                WRITE_TX: begin
                    m_axi_awaddr  <= ADDR_MAP[reg_idx];
                    m_axi_wdata   <= TEST_DATA[reg_idx];
                    m_axi_awvalid <= 1'b1;
                    m_axi_wvalid  <= 1'b1;
                    m_axi_bready  <= 1'b1;

                    if (m_axi_awready && m_axi_wready) begin
                        m_axi_awvalid <= 1'b0;
                        m_axi_wvalid  <= 1'b0;
                        state         <= WAIT_BRESP;
                    end
                end

                WAIT_BRESP: begin
                    if (m_axi_bvalid && m_axi_bready) begin
                        m_axi_bready <= 1'b0;
                        if (m_axi_bresp != 2'b00) begin // Check for SLVERR/DECERR
                            error <= 1'b1;
                            state <= ERROR;
                        end else if (reg_idx == 2'b11) begin
                            reg_idx <= 2'b00;
                            state   <= READ_TX; // All 4 registers written, start reading
                        end else begin
                            reg_idx <= reg_idx + 1'b1;
                            state   <= WRITE_TX;
                        end
                    end
                end

                // Start Read transaction
                READ_TX: begin
                    m_axi_araddr  <= ADDR_MAP[reg_idx];
                    m_axi_arvalid <= 1'b1;
                    m_axi_rready  <= 1'b1;

                    if (m_axi_arready) begin
                        m_axi_arvalid <= 1'b0;
                        state         <= WAIT_RDATA;
                    end
                end

                WAIT_RDATA: begin
                    if (m_axi_rvalid && m_axi_rready) begin
                        m_axi_rready <= 1'b0;
                        // Verify returned data and response code
                        if (m_axi_rresp != 2'b00 || m_axi_rdata != TEST_DATA[reg_idx]) begin
                            error <= 1'b1;
                            state <= ERROR;
                        end else if (reg_idx == 2'b11) begin
                            state <= DONE; // Successfully read & verified all 4 registers
                        end else begin
                            reg_idx <= reg_idx + 1'b1;
                            state   <= READ_TX;
                        end
                    end
                end

                DONE: begin
                    done <= 1'b1;
                    if (start_pulse) state <= IDLE;
                end

                ERROR: begin
                    error <= 1'b1;
                    if (start_pulse) state <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule