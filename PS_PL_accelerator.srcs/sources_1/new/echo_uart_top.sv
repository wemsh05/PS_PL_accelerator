`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2026 05:13:52 PM
// Design Name: 
// Module Name: echo_uart_top
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



module echo_uart_top #(
    parameter int CLK_FREQ  = 200_000_000,
    parameter int BAUD_RATE = 9600
) (
    input  logic sys_clk_p,  // Differential clock positive
    input  logic sys_clk_n,  // Differential clock negative
    input  logic sys_rst_n,  // Active-low system reset
    input  logic rxd,        // UART receive
    output logic txd         // UART transmit
);

    // Differential Clock Buffer for UltraScale+
    logic sys_clk;
    IBUFDS clk_ibufds_inst (
        .I  (sys_clk_p),
        .IB (sys_clk_n),
        .O  (sys_clk)
    );

    logic [7:0] rx_data;
    logic       rx_ready;
    logic [7:0] tx_data;
    logic       tx_start;
    logic       tx_busy;

    logic       fifo_full;
    logic       fifo_empty;

    // Receiver Submodule
    echo_uart_rx #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) echo_rx_inst (
        .clk      (sys_clk),
        .rst_n    (sys_rst_n),
        .rxd      (rxd),
        .rx_data  (rx_data),
        .rx_ready (rx_ready)
    );

    // Asynchronous FIFO Buffer
    echo_async_fifo #(
        .DATA_WIDTH(8),
        .ADDR_WIDTH(4)
    ) echo_fifo_inst (
        .wr_clk    (sys_clk),
        .wr_rst_n  (sys_rst_n),
        .wr_en     (rx_ready),
        .wr_data   (rx_data),
        .full      (fifo_full),

        .rd_clk    (sys_clk),
        .rd_rst_n  (sys_rst_n),
        .rd_en     (tx_start),
        .rd_data   (tx_data),
        .empty     (fifo_empty)
    );

    assign tx_start = !fifo_empty && !tx_busy;

    // Transmitter Submodule
    echo_uart_tx #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) echo_tx_inst (
        .clk      (sys_clk),
        .rst_n    (sys_rst_n),
        .tx_data  (tx_data),
        .tx_start (tx_start),
        .txd      (txd),
        .tx_busy  (tx_busy)
    );

endmodule