`timescale 1ns / 1ps

module top_system_level (
    // Pre-generated clocks and reset from Block Design
    input  logic        clk_100MHz,
    input  logic        clk_200MHz,
    input  logic        sys_rst_n,

    // Serial UART Lines
    input  logic        rxd,
    output logic        txd,

    // AXI4-Lite Slave Interface
    input  logic        s_axi_aclk,
    input  logic        s_axi_aresetn,
    input  logic [3:0]  s_axi_awaddr,
    input  logic        s_axi_awvalid,
    output logic        s_axi_awready,
    input  logic [31:0] s_axi_wdata,
    input  logic [3:0]  s_axi_wstrb,
    input  logic        s_axi_wvalid,
    output logic        s_axi_wready,
    output logic [1:0]  s_axi_bresp,
    output logic        s_axi_bvalid,
    input  logic        s_axi_bready,
    input  logic [3:0]  s_axi_araddr,
    input  logic        s_axi_arvalid,
    output logic        s_axi_arready,
    output logic [31:0] s_axi_rdata,
    output logic [1:0]  s_axi_rresp,
    output logic        s_axi_rvalid,
    input  logic        s_axi_rready
);

    // Interconnect wires between AXI Slave and Hardware Accelerator
    logic [31:0] reg0_ctrl;
    logic [31:0] reg1_data;
    logic [31:0] reg2_status;
    logic [31:0] reg3_result;
    
    logic [1:0]  led_status_wire;
    logic        reg1_valid_strobe;

    // Generate a 1-cycle pulse when PS writes to REG1 (Address 0x04)
    assign reg1_valid_strobe = s_axi_wvalid && s_axi_wready && (s_axi_awaddr == 4'h4);

    // AXI4-Lite Slave Register Bridge
    axi4_lite_slave #(
        .DATA_WIDTH (32),
        .ADDR_WIDTH (4)
    ) axi_slave_inst (
        .aclk          (s_axi_aclk),
        .aresetn       (s_axi_aresetn),
        .awaddr        (s_axi_awaddr),
        .awvalid       (s_axi_awvalid),
        .awready       (s_axi_awready),
        .wdata         (s_axi_wdata),
        .wstrb         (s_axi_wstrb),
        .wvalid        (s_axi_wvalid),
        .wready        (s_axi_wready),
        .bresp         (s_axi_bresp),
        .bvalid        (s_axi_bvalid),
        .bready        (s_axi_bready),
        .araddr        (s_axi_araddr),
        .arvalid       (s_axi_arvalid),
        .arready       (s_axi_arready),
        .rdata         (s_axi_rdata),
        .rresp         (s_axi_rresp),
        .rvalid        (s_axi_rvalid),
        .rready        (s_axi_rready),
        
        // Register connections
        .reg0_out      (reg0_ctrl),    // Multiplier Y from PS
        .reg1_out      (reg1_data),    // Data X from PS
        .reg2_in       (reg2_status),  // FSM Status back to PS
        .reg3_in       (reg3_result)   // Computed Result back to PS
    );

    // Integrated Accelerator Core
    top_stream_acc #(
        .CLK_FREQ (100_000_000)
    ) accelerator_inst (
        .sys_clk    (clk_100MHz),
        .fast_clk   (clk_200MHz),
        .rst_n      (sys_rst_n),
        .reg0_ctrl  (reg0_ctrl),
        .reg1_data  (reg1_data),
        .reg1_valid (reg1_valid_strobe),
        .status_out (reg2_status),
        .result_out (reg3_result),
        .rxd        (rxd),
        .txd        (txd),
        .led_status (led_status_wire)
    );

endmodule