`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2026 05:12:51 PM
// Design Name: 
// Module Name: echo_uart_tx
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



module echo_uart_tx #(
    parameter int CLK_FREQ  = 200_000_000,
    parameter int BAUD_RATE = 9600
) (
    input  logic       clk,
    input  logic       rst_n,
    input  logic [7:0] tx_data,
    input  logic       tx_start,
    output logic       txd,
    output logic       tx_busy
);

    localparam int CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    typedef enum logic [1:0] {
        IDLE  = 2'b00,
        START = 2'b01,
        DATA  = 2'b10,
        STOP  = 2'b11
    } state_t;

    state_t state_reg, state_next;

    logic [15:0] clk_count_reg, clk_count_next;
    logic [2:0]  bit_index_reg, bit_index_next;
    logic [7:0]  tx_data_reg, tx_data_next;
    logic        txd_reg, txd_next;
    logic        tx_busy_reg, tx_busy_next;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_reg     <= IDLE;
            clk_count_reg <= '0;
            bit_index_reg <= '0;
            tx_data_reg   <= '0;
            txd_reg       <= 1'b1;
            tx_busy_reg   <= 1'b0;
        end else begin
            state_reg     <= state_next;
            clk_count_reg <= clk_count_next;
            bit_index_reg <= bit_index_next;
            tx_data_reg   <= tx_data_next;
            txd_reg       <= txd_next;
            tx_busy_reg   <= tx_busy_next;
        end
    end

    always_comb begin
        state_next     = state_reg;
        clk_count_next = clk_count_reg;
        bit_index_next = bit_index_reg;
        tx_data_next   = tx_data_reg;
        txd_next       = txd_reg;
        tx_busy_next   = tx_busy_reg;

        case (state_reg)
            IDLE: begin
                txd_next     = 1'b1;
                tx_busy_next = 1'b0;
                clk_count_next = '0;
                bit_index_next = '0;
                if (tx_start) begin
                    tx_data_next = tx_data;
                    tx_busy_next = 1'b1;
                    state_next   = START;
                end
            end

            START: begin
                txd_next = 1'b0; // Start bit
                if (clk_count_reg == CLKS_PER_BIT - 1) begin
                    clk_count_next = '0;
                    state_next     = DATA;
                end else begin
                    clk_count_next = clk_count_reg + 1'b1;
                end
            end

            DATA: begin
                txd_next = tx_data_reg[bit_index_reg];
                if (clk_count_reg == CLKS_PER_BIT - 1) begin
                    clk_count_next = '0;
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
                txd_next = 1'b1; // Stop bit
                if (clk_count_reg == CLKS_PER_BIT - 1) begin
                    clk_count_next = '0;
                    state_next     = IDLE;
                    tx_busy_next   = 1'b0;
                end else begin
                    clk_count_next = clk_count_reg + 1'b1;
                end
            end

            default: state_next = IDLE;
        endcase
    end

    assign txd     = txd_reg;
    assign tx_busy = tx_busy_reg;

endmodule