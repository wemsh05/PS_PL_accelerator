//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 2026/07/11 08:17:54
//// Design Name: 
//// Module Name: pipelined_mac
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


//module pipelined_mac#(
//    parameter input_reg_width = 16
//)(
//    input logic clk,
//    input logic rst,
//    //input valid bit
//    input logic in_valid,
//    //input clear signal that is going to pipelined
//    input logic in_clr,
//    input logic [input_reg_width-1:0] x_input_reg,
//    input logic [input_reg_width-1:0] y_input_reg,
//    //This width is chosen for bit-growth purposes
//    output logic [input_reg_width * 2+4-1:0] result_reg,
//    //output valid signal
//    output logic out_valid
//    );
    
//    //internal signals
//    //multiplier reg
//    logic [input_reg_width * 2 - 1:0] mult_reg;
//    //multiplier valid
//    logic valid_stage1;
//    //pipelined clear signal
//    logic clr_at_stage1;
    
//    //Stage 1
//    always_ff @(posedge clk or negedge rst)begin
//        if (!rst)begin
//        //we clear out the multiplied result, not the output result
//            //SV shorthand to fill out all seats by 0
//            mult_reg <= '0;
//            valid_stage1 <= 0;
//            clr_at_stage1 <= 0;            
//        end
//        else begin
//            mult_reg <= (x_input_reg * y_input_reg);
//            //passing the valid signal
//            valid_stage1 <= in_valid;
//            //passing the clear signal for part 2
//            clr_at_stage1 <= in_clr;
//        end
//    end
    
//    //stage 2
//    always_ff @(posedge clk or negedge rst)begin
//        if (!rst)begin
//            result_reg <= '0;
//            //output now not valid on reset
//            out_valid <= 0;
//        end
//        else begin
//        //pipelined clear arrives here
//            if (clr_at_stage1)begin
//            //here it abandons the previous sum and accepts the first
//            //incoming multiplication result 
//                result_reg <= signed'(mult_reg);
//            end
//            else if (valid_stage1)begin
//                result_reg <= result_reg + signed'(mult_reg);
//            end
//        end
//    end
    
    
//endmodule






`timescale 1ns / 1ps

module pipelined_mac#(
    parameter input_reg_width = 16
)(
    input logic clk,
    input logic rst,                 // Active-LOW reset (0 = Reset, 1 = Run)
    input logic in_valid,            // Input valid bit
    input logic in_clr,              // Input clear signal
    input logic [input_reg_width-1:0] x_input_reg,
    input logic [input_reg_width-1:0] y_input_reg,
    output logic [input_reg_width * 2+4-1:0] result_reg,
    output logic out_valid           // Output valid signal
);
    
    // Internal signals
    logic [input_reg_width * 2 - 1:0] mult_reg;
    logic valid_stage1;
    logic clr_at_stage1;
    
    // Stage 1: Multiplication
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            mult_reg <= '0;
            valid_stage1 <= 0;
            clr_at_stage1 <= 0;            
        end
        else begin
            mult_reg <= (x_input_reg * y_input_reg);
            valid_stage1 <= in_valid;
            clr_at_stage1 <= in_clr;
        end
    end
    
    // Stage 2: Accumulation & Result
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            result_reg <= '0;
            out_valid <= 0;
        end
        else begin
            // FIX 1: Drive out_valid high whenever Stage 1 had valid data/clear
            out_valid <= clr_at_stage1 || valid_stage1;

            if (clr_at_stage1) begin
                result_reg <= signed'(mult_reg);
            end
            else if (valid_stage1) begin
                result_reg <= result_reg + signed'(mult_reg);
            end
        end
    end

endmodule