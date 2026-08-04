`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/07/08 17:07:56
// Design Name: 
// Module Name: gray_to_binary
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


module gray_to_binary#(
    parameter int width = 4
)
(
     //Gray to binary
     input logic [width-1:0] gray_in,
     output logic [width-1:0] binary_out
);

    //gray to binary logic
    //MSB of both are always identical
    always_comb begin
        binary_out[width-1] = gray_in[width-1];
        
        //loop downwards to get the output by
        //XORing the input and the previous output
        for (int i = width - 2; i >= 0; i--)begin
            binary_out[i] = gray_in[i] ^ binary_out[i+1];
        end
    end

endmodule
