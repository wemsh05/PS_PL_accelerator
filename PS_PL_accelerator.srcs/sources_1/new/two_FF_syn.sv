//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 07/20/2026 09:53:01 PM
//// Design Name: 
//// Module Name: two_FF_syn
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module two_FF_syn (
//    input  wire clk,
//    input  wire rst_n,     // Active-low asynchronous reset
//    input  wire async_in,  // Asynchronous input signal
//    output reg  sync_out   // Synchronized output signal
//);

//    // First stage flip-flop register
//    reg ff1;

//    always @(posedge clk or negedge rst_n) begin
//        if (!rst_n) begin
//            ff1      <= 1'b0;
//            sync_out <= 1'b0;
//        end else begin
//            ff1      <= async_in; // Capture async signal (may enter metastable state)
//            sync_out <= ff1;      // Output stable synchronized signal
//        end
//    end

//endmodule


`timescale 1ns / 1ps

module two_FF_syn (
    input  logic clk,
    input  logic rst_n,
    input  logic d_in,
    output logic d_sync
);

    logic ff1;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ff1    <= 1'b0;
            d_sync <= 1'b0;
        end else begin
            ff1    <= d_in;
            d_sync <= ff1;
        end
    end

endmodule