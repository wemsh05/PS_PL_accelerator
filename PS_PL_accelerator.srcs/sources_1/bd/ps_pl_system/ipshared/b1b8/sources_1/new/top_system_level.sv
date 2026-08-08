


////`timescale 1ns / 1ps

////module top_system_level (
////    // Pre-generated clocks and reset from Block Design
////    input  logic        clk_100MHz,
////    input  logic        clk_200MHz,
////    input  logic        sys_rst_n,

////    // Serial UART Lines
////    input  logic        rxd,
////    output logic        txd,

////    // ---------------------------------------------------------
////    // Control Path: AXI4-Lite Slave Interface (CPU to PL Regs)
////    // ---------------------------------------------------------
////    input  logic        s_axi_aclk,
////    input  logic        s_axi_aresetn,
////    input  logic [3:0]  s_axi_awaddr,
////    input  logic        s_axi_awvalid,
////    output logic        s_axi_awready,
////    input  logic [31:0] s_axi_wdata,
////    input  logic [3:0]  s_axi_wstrb,
////    input  logic        s_axi_wvalid,
////    output logic        s_axi_wready,
////    output logic [1:0]  s_axi_bresp,
////    output logic        s_axi_bvalid,
////    input  logic        s_axi_bready,
////    input  logic [3:0]  s_axi_araddr,
////    input  logic        s_axi_arvalid,
////    output logic        s_axi_arready,
////    output logic [31:0] s_axi_rdata,
////    output logic [1:0]  s_axi_rresp,
////    output logic        s_axi_rvalid,
////    input  logic        s_axi_rready,

////    // ---------------------------------------------------------
////    // Data Path: AXI4-Stream Slave Interface (DMA to PL)
////    // ---------------------------------------------------------
////    input  logic [31:0] s_axis_tdata,
////    input  logic [3:0]  s_axis_tkeep,   // ADDED: Byte keep mask from DMA MM2S
////    input  logic        s_axis_tvalid,
////    output logic        s_axis_tready,
////    input  logic        s_axis_tlast,

////    // ---------------------------------------------------------
////    // Data Path: AXI4-Stream Master Interface (PL to DMA)
////    // ---------------------------------------------------------
////    output logic [31:0] m_axis_tdata,
////    output logic [3:0]  m_axis_tkeep,   // Byte keep mask for 32-bit DMA writes
////    output logic        m_axis_tvalid,
////    input  logic        m_axis_tready,
////    output logic        m_axis_tlast
////);

////    // Drive TKEEP high at all times so all 4 bytes of every 32-bit word are valid
////    assign m_axis_tkeep = 4'b1111;

////    // Interconnect wires between AXI Slave and Hardware Accelerator
////    logic [31:0] reg0_ctrl;
////    logic [31:0] reg1_data;
////    logic [31:0] reg2_status;
////    logic [31:0] reg3_result;
    
////    logic [1:0]  led_status_wire;
////    logic        reg1_valid_strobe;

////    // Generate a 1-cycle pulse when PS writes to REG1 (Address 0x04)
////    assign reg1_valid_strobe = s_axi_wvalid && s_axi_wready && (s_axi_awaddr == 4'h4);

////    // AXI4-Lite Slave Register Bridge
////    axi4_lite_slave #(
////        .DATA_WIDTH (32),
////        .ADDR_WIDTH (4)
////    ) axi_slave_inst (
////        .aclk          (s_axi_aclk),
////        .aresetn       (s_axi_aresetn),
////        .awaddr        (s_axi_awaddr),
////        .awvalid       (s_axi_awvalid),
////        .awready       (s_axi_awready),
////        .wdata         (s_axi_wdata),
////        .wstrb         (s_axi_wstrb),
////        .wvalid        (s_axi_wvalid),
////        .wready        (s_axi_wready),
////        .bresp         (s_axi_bresp),
////        .bvalid        (s_axi_bvalid),
////        .bready        (s_axi_bready),
////        .araddr        (s_axi_araddr),
////        .arvalid       (s_axi_arvalid),
////        .arready       (s_axi_arready),
////        .rdata         (s_axi_rdata),
////        .rresp         (s_axi_rresp),
////        .rvalid        (s_axi_rvalid),
////        .rready        (s_axi_rready),
        
////        // Register connections
////        .reg0_out      (reg0_ctrl),    // Multiplier Y from PS
////        .reg1_out      (reg1_data),    // Data X from PS (Single calculation mode)
////        .reg2_in       (reg2_status),  // FSM Status back to PS
////        .reg3_in       (reg3_result)   // Computed Result back to PS
////    );

////    // Integrated Accelerator Core
////    top_stream_acc #(
////        .CLK_FREQ (100_000_000)
////    ) accelerator_inst (
////        .sys_clk       (clk_100MHz),
////        .fast_clk      (clk_200MHz),
////        .rst_n         (sys_rst_n),
        
////        // AXI-Lite Register Interface Paths
////        .reg0_ctrl     (reg0_ctrl),
////        .reg1_data     (reg1_data),
////        .reg1_valid    (reg1_valid_strobe),
////        .status_out    (reg2_status),
////        .result_out    (reg3_result),
        
////        // AXI-Stream Data Paths routed into the core
////        .s_axis_tdata  (s_axis_tdata),
////        .s_axis_tkeep  (s_axis_tkeep),
////        .s_axis_tvalid (s_axis_tvalid),
////        .s_axis_tready (s_axis_tready),
////        .s_axis_tlast  (s_axis_tlast),
        
////        .m_axis_tdata  (m_axis_tdata),
////        .m_axis_tvalid (m_axis_tvalid),
////        .m_axis_tready (m_axis_tready),
////        .m_axis_tlast  (m_axis_tlast),

////        // Peripherals
////        .rxd           (rxd),
////        .txd           (txd),
////        .led_status    (led_status_wire)
////    );

////endmodule



//`timescale 1ns / 1ps

//module top_system_level (
//    // Pre-generated clocks and reset from Block Design
//    input  logic        clk_100MHz,
//    input  logic        clk_200MHz,
//    input  logic        sys_rst_n,

//    // Serial UART Lines
//    input  logic        rxd,
//    output logic        txd,

//    // ---------------------------------------------------------
//    // Control Path: AXI4-Lite Slave Interface (CPU to PL Regs)
//    // ---------------------------------------------------------
//    input  logic        s_axi_aclk,
//    input  logic        s_axi_aresetn,
//    input  logic [3:0]  s_axi_awaddr,
//    input  logic        s_axi_awvalid,
//    output logic        s_axi_awready,
//    input  logic [31:0] s_axi_wdata,
//    input  logic [3:0]  s_axi_wstrb,
//    input  logic        s_axi_wvalid,
//    output logic        s_axi_wready,
//    output logic [1:0]  s_axi_bresp,
//    output logic        s_axi_bvalid,
//    input  logic        s_axi_bready,
//    input  logic [3:0]  s_axi_araddr,
//    input  logic        s_axi_arvalid,
//    output logic        s_axi_arready,
//    output logic [31:0] s_axi_rdata,
//    output logic [1:0]  s_axi_rresp,
//    output logic        s_axi_rvalid,
//    input  logic        s_axi_rready,

//    // ---------------------------------------------------------
//    // Data Path: AXI4-Stream Slave Interface (DMA to PL)
//    // ---------------------------------------------------------
//    input  logic [31:0] s_axis_tdata,
//    input  logic [3:0]  s_axis_tkeep,   // Byte keep mask from DMA MM2S
//    input  logic        s_axis_tvalid,
//    output logic        s_axis_tready,
//    input  logic        s_axis_tlast,

//    // ---------------------------------------------------------
//    // Data Path: AXI4-Stream Master Interface (PL to DMA)
//    // ---------------------------------------------------------
//    output logic [31:0] m_axis_tdata,
//    output logic [3:0]  m_axis_tkeep,   // Byte keep mask for 32-bit DMA writes
//    output logic        m_axis_tvalid,
//    input  logic        m_axis_tready,
//    output logic        m_axis_tlast
//);

//    // Drive TKEEP high at all times so all 4 bytes of every 32-bit word are valid
//    assign m_axis_tkeep = 4'b1111;

//    // Interconnect wires between AXI Slave and Hardware Accelerator
//    logic [31:0] reg0_ctrl;
//    logic [31:0] reg1_data;
//    logic [31:0] reg2_status;
//    logic [31:0] reg3_result;
    
//    logic [1:0]  led_status_wire;
//    logic        reg1_valid_strobe;

//    // Generate a 1-cycle pulse when PS writes to REG1 (Address 0x04)
//    assign reg1_valid_strobe = s_axi_wvalid && s_axi_wready && (s_axi_awaddr == 4'h4);

//    // AXI4-Lite Slave Register Bridge
//    axi4_lite_slave #(
//        .DATA_WIDTH (32),
//        .ADDR_WIDTH (4)
//    ) axi_slave_inst (
//        .aclk          (s_axi_aclk),
//        .aresetn       (s_axi_aresetn),
//        .awaddr        (s_axi_awaddr),
//        .awvalid       (s_axi_awvalid),
//        .awready       (s_axi_awready),
//        .wdata         (s_axi_wdata),
//        .wstrb         (s_axi_wstrb),
//        .wvalid        (s_axi_wvalid),
//        .wready        (s_axi_wready),
//        .bresp         (s_axi_bresp),
//        .bvalid        (s_axi_bvalid),
//        .bready        (s_axi_bready),
//        .araddr        (s_axi_araddr),
//        .arvalid       (s_axi_arvalid),
//        .arready       (s_axi_arready),
//        .rdata         (s_axi_rdata),
//        .rresp         (s_axi_rresp),
//        .rvalid        (s_axi_rvalid),
//        .rready        (s_axi_rready),
        
//        // Register connections
//        .reg0_out      (reg0_ctrl),    // Multiplier Y from PS
//        .reg1_out      (reg1_data),    // Data X from PS (Single calculation mode)
//        .reg2_in       (reg2_status),  // FSM Status back to PS
//        .reg3_in       (reg3_result)   // Computed Result back to PS
//    );

//    // Integrated Accelerator Core
//    top_stream_acc #(
//        .CLK_FREQ (100_000_000)
//    ) accelerator_inst (
//        .sys_clk       (clk_100MHz),
//        .fast_clk      (clk_200MHz),
//        .rst_n         (sys_rst_n),
        
//        // AXI-Lite Register Interface Paths
//        .reg0_ctrl     (reg0_ctrl),
//        .reg1_data     (reg1_data),
//        .reg1_valid    (reg1_valid_strobe),
//        .status_out    (reg2_status),
//        .result_out    (reg3_result),
        
//        // AXI-Stream Data Paths routed into the core
//        .s_axis_tdata  (s_axis_tdata),
//        .s_axis_tkeep  (s_axis_tkeep),
//        .s_axis_tvalid (s_axis_tvalid),
//        .s_axis_tready (s_axis_tready),
//        .s_axis_tlast  (s_axis_tlast),
        
//        .m_axis_tdata  (m_axis_tdata),
//        .m_axis_tvalid (m_axis_tvalid),
//        .m_axis_tready (m_axis_tready),
//        .m_axis_tlast  (m_axis_tlast),

//        // Peripherals
//        .rxd           (rxd),
//        .txd           (txd),
//        .led_status    (led_status_wire)
//    );

//endmodule



`timescale 1ns / 1ps

module top_system_level (
    // Pre-generated clocks and reset from Block Design
    input  logic        clk_100MHz,
    input  logic        clk_200MHz,
    input  logic        sys_rst_n,

    // Serial UART Lines
    input  logic        rxd,
    output logic        txd,

    // ---------------------------------------------------------
    // Control Path: AXI4-Lite Slave Interface (CPU to PL Regs)
    // ---------------------------------------------------------
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
    input  logic        s_axi_rready,

    // ---------------------------------------------------------
    // Data Path: AXI4-Stream Slave Interface (DMA to PL)
    // ---------------------------------------------------------
    input  logic [31:0] s_axis_tdata,
    input  logic [3:0]  s_axis_tkeep,   // Byte keep mask from DMA MM2S
    input  logic        s_axis_tvalid,
    output logic        s_axis_tready,
    input  logic        s_axis_tlast,

    // ---------------------------------------------------------
    // Data Path: AXI4-Stream Master Interface (PL to DMA)
    // ---------------------------------------------------------
    output logic [31:0] m_axis_tdata,
    output logic [3:0]  m_axis_tkeep,   // Byte keep mask for 32-bit DMA writes
    output logic        m_axis_tvalid,
    input  logic        m_axis_tready,
    output logic        m_axis_tlast
);

    // Drive TKEEP high at all times so all 4 bytes of every 32-bit word are valid
    assign m_axis_tkeep = 4'b1111;

    // Interconnect wires between AXI Slave and Hardware Accelerator
    logic [31:0] reg0_ctrl;
    logic [31:0] reg1_data;
    logic [31:0] reg2_status;
    logic [31:0] reg3_result;
    
    logic [1:0]  led_status_wire;
    logic        reg1_wr_pulse; // Clean 1-cycle pulse triggered by slave write

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
        .reg0_out      (reg0_ctrl),     // Multiplier Y from PS
        .reg1_out      (reg1_data),     // Data X from PS (Single calculation mode)
        .reg1_wr_pulse (reg1_wr_pulse), // Strict 1-cycle pulse to prevent double-counting
        .reg2_in       (reg2_status),   // FSM Status back to PS
        .reg3_in       (reg3_result)    // Computed Result back to PS
    );

    // Integrated Accelerator Core
    top_stream_acc #(
        .CLK_FREQ (100_000_000)
    ) accelerator_inst (
        .sys_clk       (clk_100MHz),
        .fast_clk      (clk_200MHz),
        .rst_n         (sys_rst_n),
        
        // AXI-Lite Register Interface Paths
        .reg0_ctrl     (reg0_ctrl),
        .reg1_data     (reg1_data),
        .reg1_valid    (reg1_wr_pulse), // Driven by the clean 1-cycle pulse
        .status_out    (reg2_status),
        .result_out    (reg3_result),
        
        // AXI-Stream Data Paths routed into the core
        .s_axis_tdata  (s_axis_tdata),
        .s_axis_tkeep  (s_axis_tkeep),
        .s_axis_tvalid (s_axis_tvalid),
        .s_axis_tready (s_axis_tready),
        .s_axis_tlast  (s_axis_tlast),
        
        .m_axis_tdata  (m_axis_tdata),
        .m_axis_tvalid (m_axis_tvalid),
        .m_axis_tready (m_axis_tready),
        .m_axis_tlast  (m_axis_tlast),

        // Peripherals
        .rxd           (rxd),
        .txd           (txd),
        .led_status    (led_status_wire)
    );

endmodule