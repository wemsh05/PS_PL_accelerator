`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/07/04 16:12:22
// Design Name: 
// Module Name: UART_RX
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

//We are making a simple one without the parity bit
module UART_RX #(
    parameter int clk_freq = 100_000_000,
    parameter int baud_rate = 115200
)
(
    input logic sys_clk,
    input logic rst_n,
    //used to detect when to start receiving data
    input logic rxd,
    output logic [7:0] rx_data,
    output logic rx_ready
);
    
    //Equations to calculate the bit limit, the clock cycles it takes to transmit a single bit
    localparam int bit_limit = (clk_freq + baud_rate / 2) / baud_rate;
    localparam int half_bit = bit_limit / 2;
    
    //define the FSM state
    typedef enum logic[1:0]{
        IDLE = 2'b00,
        START = 2'b01,
        DATA = 2'b10,
        STOP = 2'b11
    }state_t;
    
    //state register instance
    state_t state_reg;
    
    //the next state instance to help state transitions
    state_t state_next;
    
    //celling of bit_limit to accurately keep track of the cycles.
    logic [$clog2(bit_limit)-1 : 0] cycle_count;
    logic [2:0] bit_count;
    //deserialization register
    logic [7:0] shift_reg;
    
    //registers for safe cdc
    logic rxd_sync;
    logic rxd_ff1;
    
    // 2FF stability
    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)begin
            rxd_sync <= 1'b1;
            rxd_ff1 <= 1'b1;
        end
        else begin
        //fronm flipflop one to two
            rxd_ff1 <= rxd;
            rxd_sync <= rxd_ff1;
        end
        
    end
    
    
    //FSM logic
     always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)begin
            state_reg <= IDLE;
            cycle_count <= 0;
            bit_count <= 0;
            shift_reg <= 0;
        end
        else begin
        //One may question if it is possible to start at a
        //"null" state, however, that is not possible as you
        //will see below
            state_reg <= state_next;
            rx_ready <= 1'b0;
            
            //This is where the states changes
            case (state_reg)
                IDLE: begin
                    cycle_count <= 0;
                    bit_count <= 0;
                    if (rxd_sync == 0)begin
                        state_reg <= START;
                    end
                end
                
                START: begin
                //when we reach the middle point of the transmitting bit
                    if (cycle_count == (half_bit - 1))begin
                        cycle_count <= 0;
                        
                        //See if the line is low at the midpoint to reject noise
                        if(rxd_sync == 1'b0)begin
                            state_next <= DATA;                       
                        end
                        else begin
                            state_next <= IDLE;
                        end
                    
                    end
                    else begin
                        cycle_count <= cycle_count + 1;
                    end 
                end
                
                DATA: begin
                    if (cycle_count == (bit_limit - 1)) begin
                        cycle_count <= 0;
                        //right shift because UART needs LSB
                        shift_reg <= {rxd_sync, shift_reg[7:1]};
                        
                        //Finishing up the data transfer
                        if (bit_count == 3'd7)begin
                            state_next <= STOP;
                        end
                        else begin
                            bit_count <= bit_count + 3'd1;
                        end
                    end
                    else begin 
                        cycle_count <= cycle_count + 1;
                    end
                end
                
                //Stop state
                STOP: begin
                    if (cycle_count == (bit_limit - 1))begin
                        cycle_count <= 0;
                        rx_data <= shift_reg;
                        rx_ready <= 1'b1;
                        state_next <= IDLE;
                    end
                    else begin
                        cycle_count <= cycle_count + 1;
                    end
                end               
                
                //The default state should always be IDLE 
                //to avoid impossible states
                default: state_next <= IDLE;
                
            endcase
        end
     end
        
    
endmodule
