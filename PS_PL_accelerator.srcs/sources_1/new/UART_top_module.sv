`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/07/11 10:10:57
// Design Name: 
// Module Name: UART_top_module
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


module UART_top_module(
    input  logic sys_clk,  // 50 MHz clock from board
    input  logic rst_n,    // Reset button
    input  logic rxd,      // UART Receive pin
    output logic txd       // UART Transmit pin
    );
    
    logic [7:0] uart_data;
    logic rx_ready;
    logic tx_busy;

    // Instantiate RX Module (Override clock to 50MHz)
    UART_RX #(
        .clk_freq(50_000_000),
        .baud_rate(9600)
    ) rx_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .rxd(rxd),
        .rx_data(uart_data),
        .rx_ready(rx_ready)
    );

    // Instantiate TX Module (Override clock to 50MHz)
    UART_TX #(
        .clk_freq(50_000_000),
        .baud_rate(9600)
    ) tx_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .tx_data(uart_data),
        .tx_start(rx_ready), // Automatically start transmitting when a byte is received
        .txd(txd),
        .tx_busy(tx_busy)
    );
    
endmodule
