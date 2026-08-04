`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2026 05:34:55 PM
// Design Name: 
// Module Name: top_accelerator_axi
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


module top_accelerator_axi #(
    parameter int DATA_WIDTH = 32,
    parameter int ADDR_WIDTH = 4
)(
    // AXI Bus Interface
    axi_lite_if.Slave axi_bus,

    // Accelerator Physical Control & Status Signals
    output logic                  ctrl_start,
    input  logic                  status_done,
    output logic [DATA_WIDTH-1:0] vec_in_cfg,
    input  logic [DATA_WIDTH-1:0] calc_res_in
);

    // Instantiate your hand-written slave internal registers
    logic [DATA_WIDTH-1:0] reg0_ctrl;
    logic [DATA_WIDTH-1:0] reg1_status;
    logic [DATA_WIDTH-1:0] reg2_vec;
    logic [DATA_WIDTH-1:0] reg3_res;

    // Connect Internal Registers to External Hardware Interfaces
    assign ctrl_start  = reg0_ctrl[0];      // Reg0 Bit 0 drives hardware start trigger
    assign reg1_status = {31'b0, status_done}; // Reg1 is Read-Only hardware status
    assign vec_in_cfg  = reg2_vec;         // Reg2 drives configuration vector
    assign reg3_res    = calc_res_in;      // Reg3 exposes pipeline calculation result

    // Local address storage
    logic [ADDR_WIDTH-1:0] axi_awaddr;
    logic [ADDR_WIDTH-1:0] axi_araddr;

    // 1. Write Address & Data Handshake Logic
    always_ff @(posedge axi_bus.aclk or negedge axi_bus.aresetn) begin
        if (!axi_bus.aresetn) begin
            axi_bus.awready <= 1'b0;
            axi_bus.wready  <= 1'b0;
            axi_awaddr      <= '0;
        end else begin
            if (!axi_bus.awready && axi_bus.awvalid && axi_bus.wvalid) begin
                axi_bus.awready <= 1'b1;
                axi_bus.wready  <= 1'b1;
                axi_awaddr      <= axi_bus.awaddr;
            end else begin
                axi_bus.awready <= 1'b0;
                axi_bus.wready  <= 1'b0;
            end
        end
    end

    // 2. Write Internal Registers (Reg1 is read-only from bus side)
    always_ff @(posedge axi_bus.aclk or negedge axi_bus.aresetn) begin
        if (!axi_bus.aresetn) begin
            reg0_ctrl <= '0;
            reg2_vec  <= '0;
        end else begin
            if (axi_bus.awready && axi_bus.awvalid && axi_bus.wready && axi_bus.wvalid) begin
                case (axi_awaddr[3:2])
                    2'b00: begin
                        for (int i = 0; i < DATA_WIDTH/8; i++) begin
                            if (axi_bus.wstrb[i]) reg0_ctrl[(i*8) +: 8] <= axi_bus.wdata[(i*8) +: 8];
                        end
                    end
                    // 2'b01 is reg1 (Status) -> Skipped to prevent software overwrite of hw status
                    2'b10: begin
                        for (int i = 0; i < DATA_WIDTH/8; i++) begin
                            if (axi_bus.wstrb[i]) reg2_vec[(i*8) +: 8] <= axi_bus.wdata[(i*8) +: 8];
                        end
                    end
                    default: ;
                endcase
            end
        end
    end

    // 3. Write Response Logic
    always_ff @(posedge axi_bus.aclk or negedge axi_bus.aresetn) begin
        if (!axi_bus.aresetn) begin
            axi_bus.bvalid <= 1'b0;
            axi_bus.bresp  <= 2'b00; // OKAY
        end else begin
            if (axi_bus.awready && axi_bus.awvalid && axi_bus.wready && axi_bus.wvalid && !axi_bus.bvalid) begin
                axi_bus.bvalid <= 1'b1;
                axi_bus.bresp  <= 2'b00;
            end else if (axi_bus.bready && axi_bus.bvalid) begin
                axi_bus.bvalid <= 1'b0;
            end
        end
    end

    // 4. Read Address Handshake Logic
    always_ff @(posedge axi_bus.aclk or negedge axi_bus.aresetn) begin
        if (!axi_bus.aresetn) begin
            axi_bus.arready <= 1'b0;
            axi_araddr      <= '0;
        end else begin
            if (!axi_bus.arready && axi_bus.arvalid) begin
                axi_bus.arready <= 1'b1;
                axi_araddr      <= axi_bus.araddr;
            end else begin
                axi_bus.arready <= 1'b0;
            end
        end
    end

    // 5. Read Data Pipeline Logic
    always_ff @(posedge axi_bus.aclk or negedge axi_bus.aresetn) begin
        if (!axi_bus.aresetn) begin
            axi_bus.rvalid <= 1'b0;
            axi_bus.rresp  <= 2'b00;
            axi_bus.rdata  <= '0;
        end else begin
            if (axi_bus.arready && axi_bus.arvalid && !axi_bus.rvalid) begin
                axi_bus.rvalid <= 1'b1;
                axi_bus.rresp  <= 2'b00;
                case (axi_araddr[3:2])
                    2'b00: axi_bus.rdata <= reg0_ctrl;
                    2'b01: axi_bus.rdata <= reg1_status;
                    2'b10: axi_bus.rdata <= reg2_vec;
                    2'b11: axi_bus.rdata <= reg3_res;
                    default: begin
                        axi_bus.rdata <= 32'hDEADBEEF;
                        axi_bus.rresp <= 2'b11; // DECERR
                    end
                endcase
            end else if (axi_bus.rvalid && axi_bus.rready) begin
                axi_bus.rvalid <= 1'b0;
            end
        end
    end

endmodule