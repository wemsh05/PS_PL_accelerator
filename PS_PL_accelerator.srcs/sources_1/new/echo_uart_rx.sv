`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2026 05:12:10 PM
// Design Name: 
// Module Name: echo_uart_rx
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



module echo_uart_rx #(
    parameter int CLK_FREQ  = 200_000_000,
    parameter int BAUD_RATE = 9600
) (
    input  logic       clk,
    input  logic       rst_n,
    input  logic       rxd,
    output logic [7:0] rx_data,
    output logic       rx_ready
);

    localparam int CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    // State definitions
    typedef enum logic [1:0] {
        IDLE  = 2'b00,
        START = 2'b01,
        DATA  = 2'b10,
        STOP  = 2'b11
    } state_t;

    state_t state_reg, state_next;

    logic [15:0] clk_count_reg, clk_count_next;
    logic [2:0]  bit_index_reg, bit_index_next;
    logic [7:0]  rx_data_reg, rx_data_next;
    logic        rx_ready_reg, rx_ready_next;
    logic        rxd_sync1, rxd_sync2;

    // Synchronize asynchronous RX input
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rxd_sync1 <= 1'b1;
            rxd_sync2 <= 1'b1;
        end else begin
            rxd_sync1 <= rxd;
            rxd_sync2 <= rxd_sync1;
        end
    end

    // Register update
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_reg     <= IDLE;
            clk_count_reg <= '0;
            bit_index_reg <= '0;
            rx_data_reg   <= '0;
            rx_ready_reg  <= 1'b0;
        end else begin
            state_reg     <= state_next;
            clk_count_reg <= clk_count_next;
            bit_index_reg <= bit_index_next;
            rx_data_reg   <= rx_data_next;
            rx_ready_reg  <= rx_ready_next;
        end
    end

    // Next-state logic
    always_comb begin
        state_next     = state_reg;
        clk_count_next = clk_count_reg;
        bit_index_next = bit_index_reg;
        rx_data_next   = rx_data_reg;
        rx_ready_next  = 1'b0;

        case (state_reg)
            IDLE: begin
                clk_count_next = '0;
                bit_index_next = '0;
                if (rxd_sync2 == 1'b0) begin // Start bit detected
                    state_next = START;
                end
            end

            START: begin
                if (clk_count_reg == (CLKS_PER_BIT / 2) - 1) begin
                    if (rxd_sync2 == 1'b0) begin
                        clk_count_next = '0;
                        state_next     = DATA;
                    end else begin
                        state_next = IDLE;
                    end
                end else begin
                    clk_count_next = clk_count_reg + 1'b1;
                end
            end

            DATA: begin
                if (clk_count_reg == CLKS_PER_BIT - 1) begin
                    clk_count_next            = '0;
                    rx_data_next[bit_index_reg] = rxd_sync2;
                    if (bit_index_reg == 3'd7) begin
                        bit_index_next = '0;
                        state_next     = STOP;
                    end else begin
                        bit_index_next = bit_index_reg + 1'b1;
                    end
                end else begin
                    clk_count_next = clk_count_reg + 1'b1;
                end
            end

            STOP: begin
                if (clk_count_reg == CLKS_PER_BIT - 1) begin
                    rx_ready_next = 1'b1;
                    state_next    = IDLE;
                end else begin
                    clk_count_next = clk_count_reg + 1'b1;
                end
            end

            default: state_next = IDLE;
        endcase
    end

    assign rx_data  = rx_data_reg;
    assign rx_ready = rx_ready_reg;

endmodule