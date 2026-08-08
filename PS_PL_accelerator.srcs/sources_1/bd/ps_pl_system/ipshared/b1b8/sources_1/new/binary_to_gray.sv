`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/07/08 17:04:48
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray#(
    parameter int width = 4
)(
    input logic [width-1:0] binary_in,
    output logic [width-1:0] gray_out
);

//binary to gray logic
    //Gray = binary XOR (binary shifted right by 1)
    always_comb begin
        gray_out = binary_in ^ (binary_in >> 1);
    end
    
endmodule
