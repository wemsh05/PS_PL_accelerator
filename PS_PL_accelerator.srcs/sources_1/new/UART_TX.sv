//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 2026/07/05 22:38:12
//// Design Name: 
//// Module Name: UART_TX
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


//module UART_TX #(
//    parameter int clk_freq = 100_000_000,
//    parameter int baud_rate = 115200
//)
//(
//    input logic sys_clk,
//    input logic rst_n,
//    //byte to send
//    input logic [7:0] tx_data,
//    //pulse high to trigger transmission
//    input logic tx_start,
//    output logic txd,
//    //pulled high while transmitting to indicate that it is transmitting
//    output logic tx_busy
//);

////still the same bit limit equation
//localparam int bit_limit = (clk_freq + (baud_rate / 2)) / baud_rate;

////shortcut way to define the 4 states
//typedef enum logic [1:0] {IDLE, START, DATA, STOP} state_t;

//state_t state_reg, state_next;

//logic [$clog2(bit_limit)-1:0]cycle_count;
//logic [2:0] bit_count;
//logic [7:0] tx_reg;

//always_ff @(posedge sys_clk or negedge rst_n) begin
//    if (!rst_n)begin
//        state_reg <= IDLE;
//        cycle_count <= 0;
//        bit_count <= 0;
//        tx_reg <= 8'h00;
//    end
//    else begin
//        state_reg <= state_next;
        
//        case(state_reg)
//            IDLE: begin
//                cycle_count <= 0;
//                bit_count <= 0;
//                if (tx_start) begin
//                    tx_reg <= tx_data;
//                    state_next <= START;
//                end
//            end
            
//            START: begin
//                if (cycle_count == (bit_limit -1))begin
//                    cycle_count <= 0;
//                    state_next <= DATA;
//                end
//                else begin
//                    cycle_count <= cycle_count + 1;
//                end
//            end
            
//            DATA: begin
//                if (cycle_count == bit_limit - 1)begin
//                    cycle_count <= 0;
//                    if (bit_count == 3'd7)begin
//                        state_next <= STOP;
//                    end
//                    else begin
//                        bit_count <= bit_count + 3'd1;
//                        state_next <= DATA;
//                    end
//                end
//                else begin
//                    cycle_count <= cycle_count + 1;
//                    state_next <= DATA;
//                end
                
//            end
            
//            STOP: begin
//                if (cycle_count == bit_limit - 1)begin
//                    cycle_count <= 0;
//                    state_next <= IDLE;
//                end
//                else begin
//                    cycle_count <= cycle_count + 1;
//                    state_next <= STOP;
//                end
//            end
            
//            default: state_next <= IDLE;
            
//        endcase
//    end
//end


//always_comb begin
//        txd     = 1'b1; // Default to Idle (High)
//        tx_busy = 1'b1; // Default to Busy

//        case (state_reg)
//            IDLE: begin
//                txd     = 1'b1;
//                tx_busy = 1'b0; // Only time it isn't busy
//            end
//            START:   txd = 1'b0;                 // Pull line low for start bit
//            DATA:    txd = tx_reg[bit_count];      // Index directly into stable data
//            STOP:    txd = 1'b1;                 // Pull line high for stop bit
//            default: txd = 1'b1;
//        endcase
//    end

//endmodule


`timescale 1ns / 1ps

module UART_TX #(
    parameter int clk_freq  = 100_000_000,
    parameter int baud_rate = 115200
) (
    input  logic       sys_clk,
    input  logic       rst_n,
    input  logic [7:0] tx_data,
    input  logic       tx_start,
    output logic       txd,
    output logic       tx_busy
);

    // Calculate clock cycles per bit
    localparam int BIT_LIMIT = (clk_freq + (baud_rate / 2)) / baud_rate;

    typedef enum logic [1:0] {
        IDLE,
        START,
        DATA,
        STOP
    } state_t;

    state_t state_reg;

    logic [$clog2(BIT_LIMIT)-1:0] cycle_count;
    logic [2:0]                   bit_count;
    logic [7:0]                   tx_reg;

    // State & Datapath Register Updates
    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            state_reg   <= IDLE;
            cycle_count <= '0;
            bit_count   <= '0;
            tx_reg      <= 8'h00;
        end else begin
            case (state_reg)
                IDLE: begin
                    cycle_count <= '0;
                    bit_count   <= '0;
                    if (tx_start) begin
                        tx_reg    <= tx_data;
                        state_reg <= START;
                    end
                end

                START: begin
                    if (cycle_count == (BIT_LIMIT - 1)) begin
                        cycle_count <= '0;
                        state_reg   <= DATA;
                    end else begin
                        cycle_count <= cycle_count + 1'b1;
                    end
                end

                DATA: begin
                    if (cycle_count == (BIT_LIMIT - 1)) begin
                        cycle_count <= '0;
                        if (bit_count == 3'd7) begin
                            state_reg <= STOP;
                        end else begin
                            bit_count <= bit_count + 3'd1;
                        end
                    end else begin
                        cycle_count <= cycle_count + 1'b1;
                    end
                end

                STOP: begin
                    if (cycle_count == (BIT_LIMIT - 1)) begin
                        cycle_count <= '0;
                        state_reg   <= IDLE;
                    end else begin
                        cycle_count <= cycle_count + 1'b1;
                    end
                end

                default: state_reg <= IDLE;
            endcase
        end
    end

    // Combinational Line Drive Logic
    always_comb begin
        txd     = 1'b1; // Idle high
        tx_busy = 1'b1; // Default busy

        case (state_reg)
            IDLE: begin
                txd     = 1'b1;
                tx_busy = 1'b0;
            end
            START:   txd = 1'b0;
            DATA:    txd = tx_reg[bit_count];
            STOP:    txd = 1'b1;
            default: begin
                txd     = 1'b1;
                tx_busy = 1'b0;
            end
        endcase
    end

endmodule