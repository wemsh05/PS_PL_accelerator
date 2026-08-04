`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2026 10:17:01 AM
// Design Name: 
// Module Name: axis_out_adapter
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


module axis_out_adapter #(
    parameter int DATA_WIDTH = 32
)(
    input  logic                    clk,
    input  logic                    rst_n,
    
    // Internal Accelerator Pipeline Ports
    input  logic                    acc_valid_in,
    input  logic [DATA_WIDTH-1:0]   acc_data_in,
    input  logic                    acc_last_in,  // Indicates end of stream packet for DMA
    output logic                    acc_ready_out,

    // External AXI-Stream Master Interface (Connects to AXI DMA / SmartConnect)
    output logic [DATA_WIDTH-1:0]   m_axis_tdata,
    output logic [(DATA_WIDTH/8)-1:0] m_axis_tkeep,
    output logic                    m_axis_tvalid,
    output logic                    m_axis_tlast,
    input  logic                    m_axis_tready
);

    // Direct mapping to AXI-Stream Master Ports
    assign m_axis_tdata  = acc_data_in;
    assign m_axis_tkeep  = '1; // All byte lanes valid
    assign m_axis_tvalid = acc_valid_in;
    assign m_axis_tlast  = acc_last_in;
    
    // Backpressure Propagation:
    // Pass ready signal back to internal accelerator when downstream is ready or stream is idle
    assign acc_ready_out = m_axis_tready || !m_axis_tvalid;

endmodule
