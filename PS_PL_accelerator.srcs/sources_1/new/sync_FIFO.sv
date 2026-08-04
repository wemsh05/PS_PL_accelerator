`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2026 07:47:47 AM
// Design Name: 
// Module Name: sync_FIFO
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


// sync_fifo.sv
// Standardized Synchronous FIFO for UART RX to Internal System buffer
module sync_fifo #(
    parameter int DATA_WIDTH = 8,
    parameter int DEPTH = 16
) (
    input  logic                    clk,
    input  logic                    rst_n,
    input  logic [DATA_WIDTH-1:0]   wr_data,
    input  logic                    wr_en,
    input  logic                    rd_en,
    output logic [DATA_WIDTH-1:0]   rd_data,
    output logic                    full,
    output logic                    empty
);

    localparam int ADDR_WIDTH = $clog2(DEPTH);

    // Memory array
    logic [DATA_WIDTH-1:0] mem [DEPTH-1:0];

    // Pointers and counter
    logic [ADDR_WIDTH-1:0] wr_ptr;
    logic [ADDR_WIDTH-1:0] rd_ptr;
    logic [ADDR_WIDTH:0]   count; // Extra bit to easily track Full/Empty

    // Status logic
    always_comb begin
        full  = (count == DEPTH);
        empty = (count == 0);
    end

    // Sequential read/write and pointer management
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr  <= '0;
            rd_ptr  <= '0;
            count   <= '0;
            rd_data <= '0;
        end else begin
            // Write operation
            if (wr_en && !full) begin
                mem[wr_ptr] <= wr_data;
                wr_ptr      <= wr_ptr + 1'b1;
            end

            // Read operation
            if (rd_en && !empty) begin
                rd_data <= mem[rd_ptr];
                rd_ptr  <= rd_ptr + 1'b1;
            end

            // Count tracker
            if ((wr_en && !full) && !(rd_en && !empty)) begin
                count <= count + 1'b1;
            end else if (!(wr_en && !full) && (rd_en && !empty)) begin
                count <= count - 1'b1;
            end
        end
    end

endmodule
