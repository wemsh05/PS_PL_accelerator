`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/07/07 21:55:27
// Design Name: 
// Module Name: async_FIFO
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


//module async_FIFO(
//    //write clock
//    input logic wr_clk,
//    input logic wr_data,
//    //write and read enable
//    input logic wr_en,
//    input logic rd_en,
//    //read clock
//    input logic rd_clk,
//    //write and read reset
//    input logic wr_rst_n,
//    input logic rd_rst_n,
//    output logic rd_data
//);

//logic full;
//logic empty;

////write memory enable and read memory enable
//logic wr_en_mem;
//logic rd_en_mem;

//logic wr_ptr;
//logic rd_ptr;



//always_ff @(posedge wr_clk or negedge wr_rst_n)begin
    
//end

//endmodule


`timescale 1ns / 1ps

module async_fifo #(
    parameter int DATA_WIDTH = 8,
    parameter int DEPTH = 16
) (
    input  logic                    wr_clk,
    input  logic                    wr_rst_n,
    input  logic                    wr_en,
    input  logic [DATA_WIDTH-1:0]   wr_data,
    output logic                    full,

    input  logic                    rd_clk,
    input  logic                    rd_rst_n,
    input  logic                    rd_en,
    output logic [DATA_WIDTH-1:0]   rd_data,
    output logic                    empty
);

    localparam int ADDR_WIDTH = $clog2(DEPTH);
    localparam int PTR_WIDTH  = ADDR_WIDTH + 1; // Pointers need 1 extra bit for full/empty detection

    // Memory array
    logic [DATA_WIDTH-1:0] mem [DEPTH-1:0];

    // Binary and Gray Pointer registers
    logic [PTR_WIDTH-1:0] wr_bin_ptr, wr_bin_next;
    logic [PTR_WIDTH-1:0] rd_bin_ptr, rd_bin_next;
    logic [PTR_WIDTH-1:0] wr_gray_next, rd_gray_next;
    logic [PTR_WIDTH-1:0] wr_gray_ptr, rd_gray_ptr;

    // Cross-domain synchronization registers (2FF)
    logic [PTR_WIDTH-1:0] wr_gray_sync1, wr_gray_sync2;
    logic [PTR_WIDTH-1:0] rd_gray_sync1, rd_gray_sync2;

    // Address indexing
    logic [ADDR_WIDTH-1:0] wr_addr, rd_addr;
    assign wr_addr = wr_bin_ptr[ADDR_WIDTH-1:0];
    assign rd_addr = rd_bin_ptr[ADDR_WIDTH-1:0];

    // Dual-Port RAM Write (Write Domain)
    always_ff @(posedge wr_clk) begin
        if (wr_en && !full) begin
            mem[wr_addr] <= wr_data;
        end
    end

    // RAM Read (Read Domain)
    assign rd_data = mem[rd_addr];

    // ==========================================
    // WRITE DOMAIN LOGIC
    // ==========================================
    assign wr_bin_next = wr_bin_ptr + (wr_en & ~full);
    
    // Instantiate your binary_to_gray module for the write pointer
    binary_to_gray #(
        .width(PTR_WIDTH)
    ) u_wr_bin2gray (
        .binary_in(wr_bin_next),
        .gray_out(wr_gray_next)
    );

    always_ff @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n) begin
            wr_bin_ptr  <= '0;
            wr_gray_ptr <= '0;
        end else begin
            wr_bin_ptr  <= wr_bin_next;
            wr_gray_ptr <= wr_gray_next;
        end
    end

    // Synchronize Read Gray Pointer into Write Clock Domain (2FF)
    always_ff @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n) begin
            rd_gray_sync1 <= '0;
            rd_gray_sync2 <= '0;
        end else begin
            rd_gray_sync1 <= rd_gray_ptr;
            rd_gray_sync2 <= rd_gray_sync1;
        end
    end

    // Full Flag Condition
    assign full = (wr_gray_ptr == {~rd_gray_sync2[PTR_WIDTH-1:PTR_WIDTH-2], rd_gray_sync2[PTR_WIDTH-3:0]});

    // ==========================================
    // READ DOMAIN LOGIC
    // ==========================================
    assign rd_bin_next = rd_bin_ptr + (rd_en & ~empty);

    // Instantiate your binary_to_gray module for the read pointer
    binary_to_gray #(
        .width(PTR_WIDTH)
    ) u_rd_bin2gray (
        .binary_in(rd_bin_next),
        .gray_out(rd_gray_next)
    );

    always_ff @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n) begin
            rd_bin_ptr  <= '0;
            rd_gray_ptr <= '0;
        end else begin
            rd_bin_ptr  <= rd_bin_next;
            rd_gray_ptr <= rd_gray_next;
        end
    end

    // Synchronize Write Gray Pointer into Read Clock Domain (2FF)
    always_ff @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n) begin
            wr_gray_sync1 <= '0;
            wr_gray_sync2 <= '0;
        end else begin
            wr_gray_sync1 <= wr_gray_ptr;
            wr_gray_sync2 <= wr_gray_sync1;
        end
    end

    // Empty Flag Condition
    assign empty = (rd_gray_ptr == wr_gray_sync2);

endmodule
