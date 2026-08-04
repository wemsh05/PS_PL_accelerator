`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2026 09:57:54 AM
// Design Name: 
// Module Name: acc_interface
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


`timescale 1ns / 1ps
// acc_interface.sv
interface acc_interface;
    // Data stream fields
    logic [7:0] data_val;
    logic       valid;
    logic       ready;

    // Board Hardware Status Indicators
    logic [1:0] led_status; // 2'b00: IDLE, 2'b01: PROCESSING, 2'b10: DONE

    // Control Ports
    modport master (
        output data_val, valid,
        input  ready, led_status
    );

    modport slave (
        input  data_val, valid,
        output ready, led_status
    );
endinterface