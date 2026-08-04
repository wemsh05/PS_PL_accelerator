`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Iowa State University
// Engineer: Enming Wang
// 
// Create Date: 2026/07/02 21:37:20
// Design Name: AX7035B led light show
// Module Name: led
// Project Name: 
// Target Devices: Alinx AX7035B
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


module led(
    input logic clk,
    input logic rst_n,
    output logic [3:0] led
    );
    
    //26 bit counter to slow the clk
    logic [25:0] counter;
    
    always_ff @(posedge clk or negedge rst_n) begin
    //reset is active low
        if (!rst_n)begin
            counter <= 26'b0;
            led <= 4'b1;
        end
        else begin
            //increment counter on positive clk edge
            counter <= counter + 1'b1;
            led[0] = counter[25];
            led[1] = ~counter[25];
            led[2] = counter[24];
            led[3] = ~counter[24];
        end
    end
    
endmodule
