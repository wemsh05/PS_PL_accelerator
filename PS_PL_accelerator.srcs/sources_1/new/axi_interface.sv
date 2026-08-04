
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2026 10:16:08 AM
// Design Name: 
// Module Name: axi_interface
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


// axis_if.sv - AXI-Stream Style Interface with Backpressure Handshake
interface axis_if #(
    parameter int DATA_WIDTH = 16
)(
    input logic clk,
    input logic rst_n
);
    logic                    tvalid;
    logic                    tready;
    logic [DATA_WIDTH-1:0]   tdata;
    logic                    tlast; // Optional: signals end of packet/vector

    // Producer Port (Master)
    modport master (
        input  clk, rst_n, tready,
        output tvalid, tdata, tlast
    );

    // Consumer Port (Slave)
    modport slave (
        input  clk, rst_n, tvalid, tdata, tlast,
        output tready
    );
endinterface
