`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/07/04 09:33:53
// Design Name: 
// Module Name: MMCM
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


module MMCM(
    input logic sys_clk,
    input logic sys_rst_n,
    output logic clk_100m,
    //synchrnous reset output
    output logic rst_n_out
    );
    
    //rst_high is needed because the alinx board has the rest button active low,
    //while the IP reset is active high
    logic rst_high;
    logic mmcm_locked;
    
    //assigning the reset change
    assign rst_high = ~sys_rst_n;
    
    clk_wiz_0 uut(
        .clk_out1(clk_100m),
        .clk_in1(sys_clk),
        .reset(rst_high),
        .locked(mmcm_locked)
        
    );
    
    always_ff@(posedge clk_100m or negedge sys_rst_n)begin
        if (!sys_rst_n)begin
            rst_n_out <= 1'b0;
        end
        else begin
            rst_n_out <= mmcm_locked;
        end
    end
    
    
endmodule
