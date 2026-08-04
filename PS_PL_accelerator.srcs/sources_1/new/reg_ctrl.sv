`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2026 09:09:55 AM
// Design Name: 
// Module Name: reg_ctrl
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

//an AXI register controller

module reg_ctrl(
    input logic clk,
    input logic rst_n,
    
    //write address
    input logic [1:0] waddr,
    //write enable
    input logic wen,
    //write data
    input logic [31:0] wdata,
    //read address
    input logic [1:0] raddr,
    //read enable
    input logic ren,
    output logic [31:0] rdata,
    
    //ports to add to week 3's mac and others
    //control register output, signal for start
    output logic ctrl_start,
    //status register input, signal for completion
    input logic status_done,
    //vector input register output
    output logic vec_in,
    //calculated result of another origin will be inputted to here
    input logic [31:0] calc_res
    
);

//The four registers to be contolled here:
//state 2'b00
logic [31:0] reg_ctrl_word;
//state 2'b01
logic [31:0] reg_status;
//state 2'b10
logic [31:0] reg_vec_in;
//state 2'b11
logic [31:0] reg_calc_res;

//remember, fast response time
always_ff @(posedge clk or negedge rst_n)begin
    if (!rst_n)begin
        reg_ctrl_word <= 32'h0;
        reg_vec_in <= 32'h0;
    end
    else if (wen) begin
        case (waddr)
            //writing in data to word register
            2'b00: reg_ctrl_word <= wdata;
            //input vectors for settings
            2'b10: reg_vec_in <= wdata;
            //default state where you do nothing
            default:;
        endcase
    end
end

//hardware status
always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
        reg_status <= 32'h0;
        reg_calc_res <= 32'h0;
    end
    else begin
        reg_status <= {31'h0, status_done};
        reg_calc_res <= calc_res;
    end
end

//address cases
always_comb begin
    if (ren)begin
        case (raddr)
            2'b00: rdata = reg_ctrl_word;
            2'b01: rdata = reg_status;
            2'b10: rdata = reg_vec_in;
            2'b11: rdata = reg_calc_res;
            default: rdata = 32'h0;
        endcase
    end
    else begin
        rdata = 32'h0;
    end
end

//internal wiring
assign ctrl_start = reg_ctrl_word[0];
assign vec_in = reg_vec_in;


endmodule