// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Aug  8 13:46:39 2026
// Host        : DESKTOP-PB1BCUE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PS_PL_accelerator/PS_PL_accelerator.srcs/sources_1/bd/ps_pl_system/ip/ps_pl_system_top_system_level_0_3/ps_pl_system_top_system_level_0_3_sim_netlist.v
// Design      : ps_pl_system_top_system_level_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_pl_system_top_system_level_0_3,top_system_level,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "top_system_level,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module ps_pl_system_top_system_level_0_3
   (clk_100MHz,
    clk_200MHz,
    sys_rst_n,
    rxd,
    txd,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_100MHz CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_100MHz, ASSOCIATED_BUSIF s_axis:m_axis, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_200MHz CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_200MHz, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk_200MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
  input rxd;
  output txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire clk_100MHz;
  wire clk_200MHz;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rxd;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire sys_rst_n;
  wire txd;

  ps_pl_system_top_system_level_0_3_top_system_level inst
       (.clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rxd(rxd),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .sys_rst_n(sys_rst_n),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module ps_pl_system_top_system_level_0_3_async_fifo
   (\rd_gray_sync2_reg[1]_0 ,
    s_axis_tready,
    rx_af_empty,
    rd_data,
    clk_200MHz,
    \rd_bin_ptr_reg[2]_0 ,
    clk_100MHz,
    reg1_wr_pulse,
    s_axis_tvalid,
    s_axis_tlast,
    mac_in_valid_reg,
    \track_mem_reg[0][1] );
  output \rd_gray_sync2_reg[1]_0 ;
  output s_axis_tready;
  output rx_af_empty;
  output [17:0]rd_data;
  input clk_200MHz;
  input \rd_bin_ptr_reg[2]_0 ;
  input clk_100MHz;
  input reg1_wr_pulse;
  input s_axis_tvalid;
  input s_axis_tlast;
  input mac_in_valid_reg;
  input [31:0]\track_mem_reg[0][1] ;

  wire clk_100MHz;
  wire clk_200MHz;
  wire mac_in_valid_reg;
  wire mem_reg_0_15_0_13_i_16_n_0;
  wire mem_reg_0_15_14_27_n_10;
  wire mem_reg_0_15_14_27_n_11;
  wire mem_reg_0_15_14_27_n_12;
  wire mem_reg_0_15_14_27_n_13;
  wire mem_reg_0_15_14_27_n_2;
  wire mem_reg_0_15_14_27_n_3;
  wire mem_reg_0_15_14_27_n_4;
  wire mem_reg_0_15_14_27_n_5;
  wire mem_reg_0_15_14_27_n_6;
  wire mem_reg_0_15_14_27_n_7;
  wire mem_reg_0_15_14_27_n_8;
  wire mem_reg_0_15_14_27_n_9;
  wire mem_reg_0_15_28_33_n_0;
  wire mem_reg_0_15_28_33_n_1;
  wire mem_reg_0_15_28_33_n_2;
  wire mem_reg_0_15_28_33_n_3;
  wire [4:0]rd_bin_next;
  wire [0:0]rd_bin_next0__0;
  wire [3:0]rd_bin_ptr_reg;
  wire \rd_bin_ptr_reg[2]_0 ;
  wire [17:0]rd_data;
  wire [3:0]rd_gray_next;
  wire [4:0]rd_gray_ptr;
  wire \rd_gray_ptr[3]_i_3__0_n_0 ;
  wire [4:0]rd_gray_sync1;
  wire [4:0]rd_gray_sync2;
  wire \rd_gray_sync2_reg[1]_0 ;
  wire reg1_wr_pulse;
  wire rx_af_empty;
  wire rx_af_wr_en1;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tready_INST_0_i_2_n_0;
  wire s_axis_tvalid;
  wire [31:0]\track_mem_reg[0][1] ;
  wire [4:4]wr_bin_next;
  wire [0:0]wr_bin_next0__0;
  wire [3:0]wr_bin_next__0;
  wire \wr_bin_ptr_reg_n_0_[0] ;
  wire \wr_bin_ptr_reg_n_0_[1] ;
  wire \wr_bin_ptr_reg_n_0_[2] ;
  wire \wr_bin_ptr_reg_n_0_[3] ;
  wire [32:32]wr_data;
  wire [3:0]wr_gray_next;
  wire [4:0]wr_gray_ptr;
  wire [4:0]wr_gray_sync1;
  wire [4:0]wr_gray_sync2;
  wire [1:0]NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "accelerator_inst/rx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 mem_reg_0_15_0_13
       (.ADDRA({1'b0,rd_bin_ptr_reg}),
        .ADDRB({1'b0,rd_bin_ptr_reg}),
        .ADDRC({1'b0,rd_bin_ptr_reg}),
        .ADDRD({1'b0,rd_bin_ptr_reg}),
        .ADDRE({1'b0,rd_bin_ptr_reg}),
        .ADDRF({1'b0,rd_bin_ptr_reg}),
        .ADDRG({1'b0,rd_bin_ptr_reg}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(\track_mem_reg[0][1] [1:0]),
        .DIB(\track_mem_reg[0][1] [3:2]),
        .DIC(\track_mem_reg[0][1] [5:4]),
        .DID(\track_mem_reg[0][1] [7:6]),
        .DIE(\track_mem_reg[0][1] [9:8]),
        .DIF(\track_mem_reg[0][1] [11:10]),
        .DIG(\track_mem_reg[0][1] [13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(rd_data[1:0]),
        .DOB(rd_data[3:2]),
        .DOC(rd_data[5:4]),
        .DOD(rd_data[7:6]),
        .DOE(rd_data[9:8]),
        .DOF(rd_data[11:10]),
        .DOG(rd_data[13:12]),
        .DOH(NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_100MHz),
        .WE(wr_bin_next0__0));
  LUT4 #(
    .INIT(16'h0EEE)) 
    mem_reg_0_15_0_13_i_1
       (.I0(reg1_wr_pulse),
        .I1(s_axis_tvalid),
        .I2(mem_reg_0_15_0_13_i_16_n_0),
        .I3(s_axis_tready_INST_0_i_2_n_0),
        .O(wr_bin_next0__0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    mem_reg_0_15_0_13_i_16
       (.I0(wr_gray_ptr[0]),
        .I1(rd_gray_sync2[0]),
        .I2(wr_gray_ptr[1]),
        .I3(rd_gray_sync2[1]),
        .O(mem_reg_0_15_0_13_i_16_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "accelerator_inst/rx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 mem_reg_0_15_14_27
       (.ADDRA({1'b0,rd_bin_ptr_reg}),
        .ADDRB({1'b0,rd_bin_ptr_reg}),
        .ADDRC({1'b0,rd_bin_ptr_reg}),
        .ADDRD({1'b0,rd_bin_ptr_reg}),
        .ADDRE({1'b0,rd_bin_ptr_reg}),
        .ADDRF({1'b0,rd_bin_ptr_reg}),
        .ADDRG({1'b0,rd_bin_ptr_reg}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(\track_mem_reg[0][1] [15:14]),
        .DIB(\track_mem_reg[0][1] [17:16]),
        .DIC(\track_mem_reg[0][1] [19:18]),
        .DID(\track_mem_reg[0][1] [21:20]),
        .DIE(\track_mem_reg[0][1] [23:22]),
        .DIF(\track_mem_reg[0][1] [25:24]),
        .DIG(\track_mem_reg[0][1] [27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(rd_data[15:14]),
        .DOB({mem_reg_0_15_14_27_n_2,mem_reg_0_15_14_27_n_3}),
        .DOC({mem_reg_0_15_14_27_n_4,mem_reg_0_15_14_27_n_5}),
        .DOD({mem_reg_0_15_14_27_n_6,mem_reg_0_15_14_27_n_7}),
        .DOE({mem_reg_0_15_14_27_n_8,mem_reg_0_15_14_27_n_9}),
        .DOF({mem_reg_0_15_14_27_n_10,mem_reg_0_15_14_27_n_11}),
        .DOG({mem_reg_0_15_14_27_n_12,mem_reg_0_15_14_27_n_13}),
        .DOH(NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_100MHz),
        .WE(wr_bin_next0__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "accelerator_inst/rx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "33" *) 
  RAM32M16 mem_reg_0_15_28_33
       (.ADDRA({1'b0,rd_bin_ptr_reg}),
        .ADDRB({1'b0,rd_bin_ptr_reg}),
        .ADDRC({1'b0,rd_bin_ptr_reg}),
        .ADDRD({1'b0,rd_bin_ptr_reg}),
        .ADDRE({1'b0,rd_bin_ptr_reg}),
        .ADDRF({1'b0,rd_bin_ptr_reg}),
        .ADDRG({1'b0,rd_bin_ptr_reg}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(\track_mem_reg[0][1] [29:28]),
        .DIB(\track_mem_reg[0][1] [31:30]),
        .DIC({rx_af_wr_en1,wr_data}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA({mem_reg_0_15_28_33_n_0,mem_reg_0_15_28_33_n_1}),
        .DOB({mem_reg_0_15_28_33_n_2,mem_reg_0_15_28_33_n_3}),
        .DOC(rd_data[17:16]),
        .DOD(NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_100MHz),
        .WE(wr_bin_next0__0));
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    mem_reg_0_15_28_33_i_5
       (.I0(s_axis_tvalid),
        .I1(wr_gray_ptr[0]),
        .I2(rd_gray_sync2[0]),
        .I3(wr_gray_ptr[1]),
        .I4(rd_gray_sync2[1]),
        .I5(s_axis_tready_INST_0_i_2_n_0),
        .O(rx_af_wr_en1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_15_28_33_i_6
       (.I0(rx_af_wr_en1),
        .I1(s_axis_tlast),
        .O(wr_data));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_bin_ptr[0]_i_1__0 
       (.I0(rd_bin_ptr_reg[0]),
        .I1(rd_bin_next0__0),
        .O(rd_bin_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_bin_ptr[1]_i_1__0 
       (.I0(rd_bin_ptr_reg[0]),
        .I1(rd_bin_next0__0),
        .I2(rd_bin_ptr_reg[1]),
        .O(rd_bin_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_bin_ptr[2]_i_1__0 
       (.I0(rd_bin_next0__0),
        .I1(rd_bin_ptr_reg[0]),
        .I2(rd_bin_ptr_reg[1]),
        .I3(rd_bin_ptr_reg[2]),
        .O(rd_bin_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_bin_ptr[3]_i_1__0 
       (.I0(rd_bin_ptr_reg[1]),
        .I1(rd_bin_ptr_reg[0]),
        .I2(rd_bin_next0__0),
        .I3(rd_bin_ptr_reg[2]),
        .I4(rd_bin_ptr_reg[3]),
        .O(rd_bin_next[3]));
  FDCE \rd_bin_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_bin_next[0]),
        .Q(rd_bin_ptr_reg[0]));
  FDCE \rd_bin_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_bin_next[1]),
        .Q(rd_bin_ptr_reg[1]));
  FDCE \rd_bin_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_bin_next[2]),
        .Q(rd_bin_ptr_reg[2]));
  FDCE \rd_bin_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_bin_next[3]),
        .Q(rd_bin_ptr_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \rd_gray_ptr[0]_i_1__0 
       (.I0(rd_bin_ptr_reg[1]),
        .I1(rd_bin_next0__0),
        .I2(rd_bin_ptr_reg[0]),
        .O(rd_gray_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5666)) 
    \rd_gray_ptr[1]_i_1__0 
       (.I0(rd_bin_ptr_reg[2]),
        .I1(rd_bin_ptr_reg[1]),
        .I2(rd_bin_next0__0),
        .I3(rd_bin_ptr_reg[0]),
        .O(rd_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \rd_gray_ptr[2]_i_1__0 
       (.I0(rd_bin_ptr_reg[3]),
        .I1(rd_bin_ptr_reg[2]),
        .I2(rd_bin_ptr_reg[1]),
        .I3(rd_bin_ptr_reg[0]),
        .I4(rd_bin_next0__0),
        .O(rd_gray_next[2]));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \rd_gray_ptr[3]_i_1__0 
       (.I0(rd_gray_ptr[4]),
        .I1(rd_bin_ptr_reg[3]),
        .I2(rd_bin_ptr_reg[2]),
        .I3(rd_bin_next0__0),
        .I4(rd_bin_ptr_reg[0]),
        .I5(rd_bin_ptr_reg[1]),
        .O(rd_gray_next[3]));
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    \rd_gray_ptr[3]_i_2__0 
       (.I0(mac_in_valid_reg),
        .I1(rd_gray_ptr[0]),
        .I2(wr_gray_sync2[0]),
        .I3(rd_gray_ptr[1]),
        .I4(wr_gray_sync2[1]),
        .I5(\rd_gray_ptr[3]_i_3__0_n_0 ),
        .O(rd_bin_next0__0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rd_gray_ptr[3]_i_3__0 
       (.I0(wr_gray_sync2[4]),
        .I1(rd_gray_ptr[4]),
        .I2(wr_gray_sync2[3]),
        .I3(rd_gray_ptr[3]),
        .I4(rd_gray_ptr[2]),
        .I5(wr_gray_sync2[2]),
        .O(\rd_gray_ptr[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rd_gray_ptr[4]_i_1__0 
       (.I0(rd_bin_ptr_reg[2]),
        .I1(rd_bin_next0__0),
        .I2(rd_bin_ptr_reg[0]),
        .I3(rd_bin_ptr_reg[1]),
        .I4(rd_bin_ptr_reg[3]),
        .I5(rd_gray_ptr[4]),
        .O(rd_bin_next[4]));
  FDCE \rd_gray_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_next[0]),
        .Q(rd_gray_ptr[0]));
  FDCE \rd_gray_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_next[1]),
        .Q(rd_gray_ptr[1]));
  FDCE \rd_gray_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_next[2]),
        .Q(rd_gray_ptr[2]));
  FDCE \rd_gray_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_next[3]),
        .Q(rd_gray_ptr[3]));
  FDCE \rd_gray_ptr_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_bin_next[4]),
        .Q(rd_gray_ptr[4]));
  FDCE \rd_gray_sync1_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_ptr[0]),
        .Q(rd_gray_sync1[0]));
  FDCE \rd_gray_sync1_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_ptr[1]),
        .Q(rd_gray_sync1[1]));
  FDCE \rd_gray_sync1_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_ptr[2]),
        .Q(rd_gray_sync1[2]));
  FDCE \rd_gray_sync1_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_ptr[3]),
        .Q(rd_gray_sync1[3]));
  FDCE \rd_gray_sync1_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_ptr[4]),
        .Q(rd_gray_sync1[4]));
  FDCE \rd_gray_sync2_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_sync1[0]),
        .Q(rd_gray_sync2[0]));
  FDCE \rd_gray_sync2_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_sync1[1]),
        .Q(rd_gray_sync2[1]));
  FDCE \rd_gray_sync2_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_sync1[2]),
        .Q(rd_gray_sync2[2]));
  FDCE \rd_gray_sync2_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_sync1[3]),
        .Q(rd_gray_sync2[3]));
  FDCE \rd_gray_sync2_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(rd_gray_sync1[4]),
        .Q(rd_gray_sync2[4]));
  LUT5 #(
    .INIT(32'h82000082)) 
    rx_af_rd_en_reg_i_3
       (.I0(\rd_gray_ptr[3]_i_3__0_n_0 ),
        .I1(wr_gray_sync2[1]),
        .I2(rd_gray_ptr[1]),
        .I3(wr_gray_sync2[0]),
        .I4(rd_gray_ptr[0]),
        .O(rx_af_empty));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(\rd_gray_sync2_reg[1]_0 ),
        .O(s_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    s_axis_tready_INST_0_i_1
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(rd_gray_sync2[1]),
        .I2(wr_gray_ptr[1]),
        .I3(rd_gray_sync2[0]),
        .I4(wr_gray_ptr[0]),
        .O(\rd_gray_sync2_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0660000000000660)) 
    s_axis_tready_INST_0_i_2
       (.I0(wr_gray_ptr[4]),
        .I1(rd_gray_sync2[4]),
        .I2(wr_gray_ptr[3]),
        .I3(rd_gray_sync2[3]),
        .I4(wr_gray_ptr[2]),
        .I5(rd_gray_sync2[2]),
        .O(s_axis_tready_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h999A)) 
    \wr_bin_ptr[0]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[0] ),
        .I1(\rd_gray_sync2_reg[1]_0 ),
        .I2(s_axis_tvalid),
        .I3(reg1_wr_pulse),
        .O(wr_bin_next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF5700A8)) 
    \wr_bin_ptr[1]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[0] ),
        .I1(reg1_wr_pulse),
        .I2(s_axis_tvalid),
        .I3(\rd_gray_sync2_reg[1]_0 ),
        .I4(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_bin_next__0[1]));
  LUT6 #(
    .INIT(64'hABFFFFFF54000000)) 
    \wr_bin_ptr[2]_i_1 
       (.I0(\rd_gray_sync2_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(reg1_wr_pulse),
        .I3(\wr_bin_ptr_reg_n_0_[0] ),
        .I4(\wr_bin_ptr_reg_n_0_[1] ),
        .I5(\wr_bin_ptr_reg_n_0_[2] ),
        .O(wr_bin_next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_bin_ptr[3]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(wr_bin_next0__0),
        .I3(\wr_bin_ptr_reg_n_0_[2] ),
        .I4(\wr_bin_ptr_reg_n_0_[3] ),
        .O(wr_bin_next__0[3]));
  FDCE \wr_bin_ptr_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_bin_next__0[0]),
        .Q(\wr_bin_ptr_reg_n_0_[0] ));
  FDCE \wr_bin_ptr_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_bin_next__0[1]),
        .Q(\wr_bin_ptr_reg_n_0_[1] ));
  FDCE \wr_bin_ptr_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_bin_next__0[2]),
        .Q(\wr_bin_ptr_reg_n_0_[2] ));
  FDCE \wr_bin_ptr_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_bin_next__0[3]),
        .Q(\wr_bin_ptr_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5555AA56)) 
    \wr_gray_ptr[0]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(reg1_wr_pulse),
        .I2(s_axis_tvalid),
        .I3(\rd_gray_sync2_reg[1]_0 ),
        .I4(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_gray_next[0]));
  LUT6 #(
    .INIT(64'h6565656666666666)) 
    \wr_gray_ptr[1]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(\wr_bin_ptr_reg_n_0_[1] ),
        .I2(\rd_gray_sync2_reg[1]_0 ),
        .I3(s_axis_tvalid),
        .I4(reg1_wr_pulse),
        .I5(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \wr_gray_ptr[2]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[3] ),
        .I1(\wr_bin_ptr_reg_n_0_[2] ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .I3(\wr_bin_ptr_reg_n_0_[0] ),
        .I4(wr_bin_next0__0),
        .O(wr_gray_next[2]));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \wr_gray_ptr[3]_i_1 
       (.I0(wr_gray_ptr[4]),
        .I1(\wr_bin_ptr_reg_n_0_[3] ),
        .I2(\wr_bin_ptr_reg_n_0_[2] ),
        .I3(wr_bin_next0__0),
        .I4(\wr_bin_ptr_reg_n_0_[0] ),
        .I5(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_gray_next[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wr_gray_ptr[4]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(wr_bin_next0__0),
        .I2(\wr_bin_ptr_reg_n_0_[0] ),
        .I3(\wr_bin_ptr_reg_n_0_[1] ),
        .I4(\wr_bin_ptr_reg_n_0_[3] ),
        .I5(wr_gray_ptr[4]),
        .O(wr_bin_next));
  FDCE \wr_gray_ptr_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_next[0]),
        .Q(wr_gray_ptr[0]));
  FDCE \wr_gray_ptr_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_next[1]),
        .Q(wr_gray_ptr[1]));
  FDCE \wr_gray_ptr_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_next[2]),
        .Q(wr_gray_ptr[2]));
  FDCE \wr_gray_ptr_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_next[3]),
        .Q(wr_gray_ptr[3]));
  FDCE \wr_gray_ptr_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_bin_next),
        .Q(wr_gray_ptr[4]));
  FDCE \wr_gray_sync1_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_ptr[0]),
        .Q(wr_gray_sync1[0]));
  FDCE \wr_gray_sync1_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_ptr[1]),
        .Q(wr_gray_sync1[1]));
  FDCE \wr_gray_sync1_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_ptr[2]),
        .Q(wr_gray_sync1[2]));
  FDCE \wr_gray_sync1_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_ptr[3]),
        .Q(wr_gray_sync1[3]));
  FDCE \wr_gray_sync1_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_ptr[4]),
        .Q(wr_gray_sync1[4]));
  FDCE \wr_gray_sync2_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_sync1[0]),
        .Q(wr_gray_sync2[0]));
  FDCE \wr_gray_sync2_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_sync1[1]),
        .Q(wr_gray_sync2[1]));
  FDCE \wr_gray_sync2_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_sync1[2]),
        .Q(wr_gray_sync2[2]));
  FDCE \wr_gray_sync2_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_sync1[3]),
        .Q(wr_gray_sync2[3]));
  FDCE \wr_gray_sync2_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\rd_bin_ptr_reg[2]_0 ),
        .D(wr_gray_sync1[4]),
        .Q(wr_gray_sync2[4]));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module ps_pl_system_top_system_level_0_3_async_fifo_0
   (rd_data,
    m_axis_tvalid,
    E,
    \FSM_onehot_curr_state_reg[1] ,
    rx_af_rd_en_reg0,
    clk_200MHz,
    \wr_bin_ptr_reg[3]_0 ,
    clk_100MHz,
    result_reg_reg,
    m_axis_tready,
    \rd_gray_ptr_reg[0]_0 ,
    Q,
    reg1_wr_pulse,
    \result_reg_reg[29] ,
    mem_reg_0_15_28_33_i_2__0_0,
    mem_reg_0_15_28_33_i_2__0_1,
    mem_reg_0_15_28_33_i_2__0_2,
    mem_reg_0_15_28_33_i_2__0_3,
    mem_reg_0_15_28_33_i_2__0_4,
    mem_reg_0_15_28_33_i_2__0_5,
    mem_reg_0_15_28_33_i_2__0_6,
    mem_reg_0_15_28_33_i_2__0_7,
    mem_reg_0_15_28_33_i_2__0_8,
    mem_reg_0_15_28_33_i_2__0_9,
    mem_reg_0_15_28_33_i_2__0_10,
    mem_reg_0_15_28_33_i_2__0_11,
    mem_reg_0_15_28_33_i_2__0_12,
    mem_reg_0_15_28_33_i_2__0_13,
    mem_reg_0_15_28_33_i_2__0_14,
    mem_reg_0_15_28_33_i_2__0_15,
    mac_in_valid_reg,
    rx_af_empty,
    \wr_gray_ptr_reg[4]_0 );
  output [32:0]rd_data;
  output m_axis_tvalid;
  output [0:0]E;
  output [0:0]\FSM_onehot_curr_state_reg[1] ;
  output rx_af_rd_en_reg0;
  input clk_200MHz;
  input \wr_bin_ptr_reg[3]_0 ;
  input clk_100MHz;
  input [31:0]result_reg_reg;
  input m_axis_tready;
  input \rd_gray_ptr_reg[0]_0 ;
  input [2:0]Q;
  input reg1_wr_pulse;
  input [3:0]\result_reg_reg[29] ;
  input [1:0]mem_reg_0_15_28_33_i_2__0_0;
  input [1:0]mem_reg_0_15_28_33_i_2__0_1;
  input [1:0]mem_reg_0_15_28_33_i_2__0_2;
  input [1:0]mem_reg_0_15_28_33_i_2__0_3;
  input [1:0]mem_reg_0_15_28_33_i_2__0_4;
  input [1:0]mem_reg_0_15_28_33_i_2__0_5;
  input [1:0]mem_reg_0_15_28_33_i_2__0_6;
  input [1:0]mem_reg_0_15_28_33_i_2__0_7;
  input [1:0]mem_reg_0_15_28_33_i_2__0_8;
  input [1:0]mem_reg_0_15_28_33_i_2__0_9;
  input [1:0]mem_reg_0_15_28_33_i_2__0_10;
  input [1:0]mem_reg_0_15_28_33_i_2__0_11;
  input [1:0]mem_reg_0_15_28_33_i_2__0_12;
  input [1:0]mem_reg_0_15_28_33_i_2__0_13;
  input [1:0]mem_reg_0_15_28_33_i_2__0_14;
  input [1:0]mem_reg_0_15_28_33_i_2__0_15;
  input mac_in_valid_reg;
  input rx_af_empty;
  input [0:0]\wr_gray_ptr_reg[4]_0 ;

  wire [0:0]E;
  wire [0:0]\FSM_onehot_curr_state_reg[1] ;
  wire [2:0]Q;
  wire clk_100MHz;
  wire clk_200MHz;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_INST_0_i_2_n_0;
  wire mac_in_valid_reg;
  wire mem_reg_0_15_28_33_i_10_n_0;
  wire mem_reg_0_15_28_33_i_11_n_0;
  wire mem_reg_0_15_28_33_i_12_n_0;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_0;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_1;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_10;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_11;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_12;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_13;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_14;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_15;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_2;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_3;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_4;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_5;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_6;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_7;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_8;
  wire [1:0]mem_reg_0_15_28_33_i_2__0_9;
  wire mem_reg_0_15_28_33_i_2__0_n_0;
  wire mem_reg_0_15_28_33_i_3__0_n_0;
  wire mem_reg_0_15_28_33_i_4__0_n_0;
  wire mem_reg_0_15_28_33_i_5__0_n_0;
  wire mem_reg_0_15_28_33_i_6__0_n_0;
  wire mem_reg_0_15_28_33_i_7_n_0;
  wire mem_reg_0_15_28_33_i_8_n_0;
  wire mem_reg_0_15_28_33_i_9_n_0;
  wire p_0_in__0__0;
  wire [4:0]rd_bin_next;
  wire [3:0]rd_bin_ptr_reg_rep;
  wire [32:0]rd_data;
  wire [3:0]rd_gray_next;
  wire \rd_gray_ptr[3]_i_2_n_0 ;
  wire \rd_gray_ptr[3]_i_3_n_0 ;
  wire \rd_gray_ptr_reg[0]_0 ;
  wire \rd_gray_ptr_reg_n_0_[0] ;
  wire \rd_gray_ptr_reg_n_0_[1] ;
  wire \rd_gray_ptr_reg_n_0_[2] ;
  wire \rd_gray_ptr_reg_n_0_[3] ;
  wire \rd_gray_ptr_reg_n_0_[4] ;
  wire \rd_gray_sync1_reg_n_0_[0] ;
  wire \rd_gray_sync1_reg_n_0_[1] ;
  wire \rd_gray_sync1_reg_n_0_[2] ;
  wire \rd_gray_sync1_reg_n_0_[3] ;
  wire \rd_gray_sync1_reg_n_0_[4] ;
  wire \rd_gray_sync2_reg_n_0_[0] ;
  wire \rd_gray_sync2_reg_n_0_[1] ;
  wire \rd_gray_sync2_reg_n_0_[2] ;
  wire \rd_gray_sync2_reg_n_0_[3] ;
  wire \rd_gray_sync2_reg_n_0_[4] ;
  wire reg1_wr_pulse;
  wire [31:0]result_reg_reg;
  wire [3:0]\result_reg_reg[29] ;
  wire rx_af_empty;
  wire rx_af_rd_en_reg0;
  wire tx_af_empty;
  wire tx_af_full;
  wire [33:33]tx_af_out_data;
  wire [4:4]wr_bin_next;
  wire [3:0]wr_bin_next__0;
  wire \wr_bin_ptr_reg[3]_0 ;
  wire \wr_bin_ptr_reg_n_0_[0] ;
  wire \wr_bin_ptr_reg_n_0_[1] ;
  wire \wr_bin_ptr_reg_n_0_[2] ;
  wire \wr_bin_ptr_reg_n_0_[3] ;
  wire [3:0]wr_gray_next;
  wire [0:0]\wr_gray_ptr_reg[4]_0 ;
  wire \wr_gray_ptr_reg_n_0_[0] ;
  wire \wr_gray_ptr_reg_n_0_[1] ;
  wire \wr_gray_ptr_reg_n_0_[2] ;
  wire \wr_gray_ptr_reg_n_0_[3] ;
  wire \wr_gray_ptr_reg_n_0_[4] ;
  wire \wr_gray_sync1_reg_n_0_[0] ;
  wire \wr_gray_sync1_reg_n_0_[1] ;
  wire \wr_gray_sync1_reg_n_0_[2] ;
  wire \wr_gray_sync1_reg_n_0_[3] ;
  wire \wr_gray_sync1_reg_n_0_[4] ;
  wire \wr_gray_sync2_reg_n_0_[0] ;
  wire \wr_gray_sync2_reg_n_0_[1] ;
  wire \wr_gray_sync2_reg_n_0_[2] ;
  wire \wr_gray_sync2_reg_n_0_[3] ;
  wire \wr_gray_sync2_reg_n_0_[4] ;
  wire [1:0]NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFF04FF04FF040404)) 
    \FSM_onehot_curr_state[2]_i_1 
       (.I0(tx_af_empty),
        .I1(Q[1]),
        .I2(tx_af_out_data),
        .I3(reg1_wr_pulse),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tvalid_INST_0
       (.I0(tx_af_out_data),
        .I1(tx_af_empty),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    m_axis_tvalid_INST_0_i_1
       (.I0(m_axis_tvalid_INST_0_i_2_n_0),
        .I1(\wr_gray_sync2_reg_n_0_[1] ),
        .I2(\rd_gray_ptr_reg_n_0_[1] ),
        .I3(\wr_gray_sync2_reg_n_0_[0] ),
        .I4(\rd_gray_ptr_reg_n_0_[0] ),
        .O(tx_af_empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tvalid_INST_0_i_2
       (.I0(\wr_gray_sync2_reg_n_0_[4] ),
        .I1(\rd_gray_ptr_reg_n_0_[4] ),
        .I2(\wr_gray_sync2_reg_n_0_[3] ),
        .I3(\rd_gray_ptr_reg_n_0_[3] ),
        .I4(\rd_gray_ptr_reg_n_0_[2] ),
        .I5(\wr_gray_sync2_reg_n_0_[2] ),
        .O(m_axis_tvalid_INST_0_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "accelerator_inst/tx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 mem_reg_0_15_0_13
       (.ADDRA({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRB({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRC({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRD({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRE({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRF({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRG({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(result_reg_reg[1:0]),
        .DIB(result_reg_reg[3:2]),
        .DIC(result_reg_reg[5:4]),
        .DID(result_reg_reg[7:6]),
        .DIE(result_reg_reg[9:8]),
        .DIF(result_reg_reg[11:10]),
        .DIG(result_reg_reg[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(rd_data[1:0]),
        .DOB(rd_data[3:2]),
        .DOC(rd_data[5:4]),
        .DOD(rd_data[7:6]),
        .DOE(rd_data[9:8]),
        .DOF(rd_data[11:10]),
        .DOG(rd_data[13:12]),
        .DOH(NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_200MHz),
        .WE(p_0_in__0__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "accelerator_inst/tx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 mem_reg_0_15_14_27
       (.ADDRA({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRB({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRC({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRD({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRE({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRF({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRG({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(result_reg_reg[15:14]),
        .DIB(result_reg_reg[17:16]),
        .DIC(result_reg_reg[19:18]),
        .DID(result_reg_reg[21:20]),
        .DIE(result_reg_reg[23:22]),
        .DIF(result_reg_reg[25:24]),
        .DIG(result_reg_reg[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(rd_data[15:14]),
        .DOB(rd_data[17:16]),
        .DOC(rd_data[19:18]),
        .DOD(rd_data[21:20]),
        .DOE(rd_data[23:22]),
        .DOF(rd_data[25:24]),
        .DOG(rd_data[27:26]),
        .DOH(NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_200MHz),
        .WE(p_0_in__0__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "accelerator_inst/tx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "33" *) 
  RAM32M16 mem_reg_0_15_28_33
       (.ADDRA({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRB({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRC({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRD({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRE({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRF({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRG({1'b0,rd_bin_ptr_reg_rep}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(result_reg_reg[29:28]),
        .DIB(result_reg_reg[31:30]),
        .DIC({mem_reg_0_15_28_33_i_2__0_n_0,mem_reg_0_15_28_33_i_3__0_n_0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(rd_data[29:28]),
        .DOB(rd_data[31:30]),
        .DOC({tx_af_out_data,rd_data[32]}),
        .DOD(NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_200MHz),
        .WE(p_0_in__0__0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_10
       (.I0(mem_reg_0_15_28_33_i_2__0_12[0]),
        .I1(mem_reg_0_15_28_33_i_2__0_13[0]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_14[0]),
        .I5(mem_reg_0_15_28_33_i_2__0_15[0]),
        .O(mem_reg_0_15_28_33_i_10_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_11
       (.I0(mem_reg_0_15_28_33_i_2__0_0[0]),
        .I1(mem_reg_0_15_28_33_i_2__0_1[0]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_2[0]),
        .I5(mem_reg_0_15_28_33_i_2__0_3[0]),
        .O(mem_reg_0_15_28_33_i_11_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_12
       (.I0(mem_reg_0_15_28_33_i_2__0_4[0]),
        .I1(mem_reg_0_15_28_33_i_2__0_5[0]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_6[0]),
        .I5(mem_reg_0_15_28_33_i_2__0_7[0]),
        .O(mem_reg_0_15_28_33_i_12_n_0));
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    mem_reg_0_15_28_33_i_1__0
       (.I0(\wr_gray_ptr_reg[4]_0 ),
        .I1(\wr_gray_ptr_reg_n_0_[0] ),
        .I2(\rd_gray_sync2_reg_n_0_[0] ),
        .I3(\wr_gray_ptr_reg_n_0_[1] ),
        .I4(\rd_gray_sync2_reg_n_0_[1] ),
        .I5(mem_reg_0_15_28_33_i_4__0_n_0),
        .O(p_0_in__0__0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    mem_reg_0_15_28_33_i_2__0
       (.I0(mem_reg_0_15_28_33_i_5__0_n_0),
        .I1(mem_reg_0_15_28_33_i_6__0_n_0),
        .I2(\result_reg_reg[29] [3]),
        .I3(\result_reg_reg[29] [2]),
        .I4(mem_reg_0_15_28_33_i_7_n_0),
        .I5(mem_reg_0_15_28_33_i_8_n_0),
        .O(mem_reg_0_15_28_33_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    mem_reg_0_15_28_33_i_3__0
       (.I0(mem_reg_0_15_28_33_i_9_n_0),
        .I1(mem_reg_0_15_28_33_i_10_n_0),
        .I2(\result_reg_reg[29] [3]),
        .I3(\result_reg_reg[29] [2]),
        .I4(mem_reg_0_15_28_33_i_11_n_0),
        .I5(mem_reg_0_15_28_33_i_12_n_0),
        .O(mem_reg_0_15_28_33_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0660000000000660)) 
    mem_reg_0_15_28_33_i_4__0
       (.I0(\wr_gray_ptr_reg_n_0_[4] ),
        .I1(\rd_gray_sync2_reg_n_0_[4] ),
        .I2(\wr_gray_ptr_reg_n_0_[3] ),
        .I3(\rd_gray_sync2_reg_n_0_[3] ),
        .I4(\wr_gray_ptr_reg_n_0_[2] ),
        .I5(\rd_gray_sync2_reg_n_0_[2] ),
        .O(mem_reg_0_15_28_33_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_5__0
       (.I0(mem_reg_0_15_28_33_i_2__0_8[1]),
        .I1(mem_reg_0_15_28_33_i_2__0_9[1]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_10[1]),
        .I5(mem_reg_0_15_28_33_i_2__0_11[1]),
        .O(mem_reg_0_15_28_33_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_6__0
       (.I0(mem_reg_0_15_28_33_i_2__0_12[1]),
        .I1(mem_reg_0_15_28_33_i_2__0_13[1]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_14[1]),
        .I5(mem_reg_0_15_28_33_i_2__0_15[1]),
        .O(mem_reg_0_15_28_33_i_6__0_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_7
       (.I0(mem_reg_0_15_28_33_i_2__0_0[1]),
        .I1(mem_reg_0_15_28_33_i_2__0_1[1]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_2[1]),
        .I5(mem_reg_0_15_28_33_i_2__0_3[1]),
        .O(mem_reg_0_15_28_33_i_7_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_8
       (.I0(mem_reg_0_15_28_33_i_2__0_4[1]),
        .I1(mem_reg_0_15_28_33_i_2__0_5[1]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_6[1]),
        .I5(mem_reg_0_15_28_33_i_2__0_7[1]),
        .O(mem_reg_0_15_28_33_i_8_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    mem_reg_0_15_28_33_i_9
       (.I0(mem_reg_0_15_28_33_i_2__0_8[0]),
        .I1(mem_reg_0_15_28_33_i_2__0_9[0]),
        .I2(\result_reg_reg[29] [0]),
        .I3(\result_reg_reg[29] [1]),
        .I4(mem_reg_0_15_28_33_i_2__0_10[0]),
        .I5(mem_reg_0_15_28_33_i_2__0_11[0]),
        .O(mem_reg_0_15_28_33_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA5A6A6A6)) 
    \rd_bin_ptr[0]_i_1 
       (.I0(rd_bin_ptr_reg_rep[0]),
        .I1(\rd_gray_ptr_reg[0]_0 ),
        .I2(tx_af_empty),
        .I3(tx_af_out_data),
        .I4(m_axis_tready),
        .O(rd_bin_next[0]));
  LUT6 #(
    .INIT(64'hFF55FF7F00AA0080)) 
    \rd_bin_ptr[1]_i_1 
       (.I0(rd_bin_ptr_reg_rep[0]),
        .I1(m_axis_tready),
        .I2(tx_af_out_data),
        .I3(tx_af_empty),
        .I4(\rd_gray_ptr_reg[0]_0 ),
        .I5(rd_bin_ptr_reg_rep[1]),
        .O(rd_bin_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_bin_ptr[2]_i_1 
       (.I0(\rd_gray_ptr[3]_i_2_n_0 ),
        .I1(rd_bin_ptr_reg_rep[1]),
        .I2(rd_bin_ptr_reg_rep[2]),
        .O(rd_bin_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_bin_ptr[3]_i_1 
       (.I0(rd_bin_ptr_reg_rep[1]),
        .I1(\rd_gray_ptr[3]_i_2_n_0 ),
        .I2(rd_bin_ptr_reg_rep[2]),
        .I3(rd_bin_ptr_reg_rep[3]),
        .O(rd_bin_next[3]));
  FDCE \rd_bin_ptr_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[0]),
        .Q(rd_bin_ptr_reg_rep[0]));
  FDCE \rd_bin_ptr_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[1]),
        .Q(rd_bin_ptr_reg_rep[1]));
  FDCE \rd_bin_ptr_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[2]),
        .Q(rd_bin_ptr_reg_rep[2]));
  FDCE \rd_bin_ptr_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[3]),
        .Q(rd_bin_ptr_reg_rep[3]));
  LUT6 #(
    .INIT(64'h55555555AA55AA6A)) 
    \rd_gray_ptr[0]_i_1 
       (.I0(rd_bin_ptr_reg_rep[1]),
        .I1(m_axis_tready),
        .I2(tx_af_out_data),
        .I3(tx_af_empty),
        .I4(\rd_gray_ptr_reg[0]_0 ),
        .I5(rd_bin_ptr_reg_rep[0]),
        .O(rd_gray_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \rd_gray_ptr[1]_i_1 
       (.I0(rd_bin_ptr_reg_rep[2]),
        .I1(rd_bin_ptr_reg_rep[1]),
        .I2(\rd_gray_ptr[3]_i_2_n_0 ),
        .O(rd_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5666)) 
    \rd_gray_ptr[2]_i_1 
       (.I0(rd_bin_ptr_reg_rep[3]),
        .I1(rd_bin_ptr_reg_rep[2]),
        .I2(rd_bin_ptr_reg_rep[1]),
        .I3(\rd_gray_ptr[3]_i_2_n_0 ),
        .O(rd_gray_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \rd_gray_ptr[3]_i_1 
       (.I0(\rd_gray_ptr_reg_n_0_[4] ),
        .I1(rd_bin_ptr_reg_rep[3]),
        .I2(rd_bin_ptr_reg_rep[2]),
        .I3(\rd_gray_ptr[3]_i_2_n_0 ),
        .I4(rd_bin_ptr_reg_rep[1]),
        .O(rd_gray_next[3]));
  LUT6 #(
    .INIT(64'h3F2A2A2A00000000)) 
    \rd_gray_ptr[3]_i_2 
       (.I0(\rd_gray_ptr_reg[0]_0 ),
        .I1(\rd_gray_ptr[3]_i_3_n_0 ),
        .I2(m_axis_tvalid_INST_0_i_2_n_0),
        .I3(tx_af_out_data),
        .I4(m_axis_tready),
        .I5(rd_bin_ptr_reg_rep[0]),
        .O(\rd_gray_ptr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \rd_gray_ptr[3]_i_3 
       (.I0(\rd_gray_ptr_reg_n_0_[0] ),
        .I1(\wr_gray_sync2_reg_n_0_[0] ),
        .I2(\rd_gray_ptr_reg_n_0_[1] ),
        .I3(\wr_gray_sync2_reg_n_0_[1] ),
        .O(\rd_gray_ptr[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_gray_ptr[4]_i_1 
       (.I0(rd_bin_ptr_reg_rep[2]),
        .I1(\rd_gray_ptr[3]_i_2_n_0 ),
        .I2(rd_bin_ptr_reg_rep[1]),
        .I3(rd_bin_ptr_reg_rep[3]),
        .I4(\rd_gray_ptr_reg_n_0_[4] ),
        .O(rd_bin_next[4]));
  FDCE \rd_gray_ptr_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[0]),
        .Q(\rd_gray_ptr_reg_n_0_[0] ));
  FDCE \rd_gray_ptr_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[1]),
        .Q(\rd_gray_ptr_reg_n_0_[1] ));
  FDCE \rd_gray_ptr_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[2]),
        .Q(\rd_gray_ptr_reg_n_0_[2] ));
  FDCE \rd_gray_ptr_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[3]),
        .Q(\rd_gray_ptr_reg_n_0_[3] ));
  FDCE \rd_gray_ptr_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[4]),
        .Q(\rd_gray_ptr_reg_n_0_[4] ));
  FDCE \rd_gray_sync1_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_ptr_reg_n_0_[0] ),
        .Q(\rd_gray_sync1_reg_n_0_[0] ));
  FDCE \rd_gray_sync1_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_ptr_reg_n_0_[1] ),
        .Q(\rd_gray_sync1_reg_n_0_[1] ));
  FDCE \rd_gray_sync1_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_ptr_reg_n_0_[2] ),
        .Q(\rd_gray_sync1_reg_n_0_[2] ));
  FDCE \rd_gray_sync1_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_ptr_reg_n_0_[3] ),
        .Q(\rd_gray_sync1_reg_n_0_[3] ));
  FDCE \rd_gray_sync1_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_ptr_reg_n_0_[4] ),
        .Q(\rd_gray_sync1_reg_n_0_[4] ));
  FDCE \rd_gray_sync2_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_sync1_reg_n_0_[0] ),
        .Q(\rd_gray_sync2_reg_n_0_[0] ));
  FDCE \rd_gray_sync2_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_sync1_reg_n_0_[1] ),
        .Q(\rd_gray_sync2_reg_n_0_[1] ));
  FDCE \rd_gray_sync2_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_sync1_reg_n_0_[2] ),
        .Q(\rd_gray_sync2_reg_n_0_[2] ));
  FDCE \rd_gray_sync2_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_sync1_reg_n_0_[3] ),
        .Q(\rd_gray_sync2_reg_n_0_[3] ));
  FDCE \rd_gray_sync2_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\rd_gray_sync1_reg_n_0_[4] ),
        .Q(\rd_gray_sync2_reg_n_0_[4] ));
  LUT3 #(
    .INIT(8'h04)) 
    \result_reg[31]_i_1 
       (.I0(tx_af_out_data),
        .I1(Q[1]),
        .I2(tx_af_empty),
        .O(\FSM_onehot_curr_state_reg[1] ));
  LUT3 #(
    .INIT(8'h01)) 
    rx_af_rd_en_reg_i_1
       (.I0(mac_in_valid_reg),
        .I1(tx_af_full),
        .I2(rx_af_empty),
        .O(rx_af_rd_en_reg0));
  LUT5 #(
    .INIT(32'h82000082)) 
    rx_af_rd_en_reg_i_2
       (.I0(mem_reg_0_15_28_33_i_4__0_n_0),
        .I1(\rd_gray_sync2_reg_n_0_[1] ),
        .I2(\wr_gray_ptr_reg_n_0_[1] ),
        .I3(\rd_gray_sync2_reg_n_0_[0] ),
        .I4(\wr_gray_ptr_reg_n_0_[0] ),
        .O(tx_af_full));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_bin_ptr[0]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[0] ),
        .I1(p_0_in__0__0),
        .O(wr_bin_next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_bin_ptr[1]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[0] ),
        .I1(p_0_in__0__0),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_bin_next__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_bin_ptr[2]_i_1__0 
       (.I0(p_0_in__0__0),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .I3(\wr_bin_ptr_reg_n_0_[2] ),
        .O(wr_bin_next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_bin_ptr[3]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(p_0_in__0__0),
        .I3(\wr_bin_ptr_reg_n_0_[2] ),
        .I4(\wr_bin_ptr_reg_n_0_[3] ),
        .O(wr_bin_next__0[3]));
  FDCE \wr_bin_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[0]),
        .Q(\wr_bin_ptr_reg_n_0_[0] ));
  FDCE \wr_bin_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[1]),
        .Q(\wr_bin_ptr_reg_n_0_[1] ));
  FDCE \wr_bin_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[2]),
        .Q(\wr_bin_ptr_reg_n_0_[2] ));
  FDCE \wr_bin_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[3]),
        .Q(\wr_bin_ptr_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \wr_gray_ptr[0]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(p_0_in__0__0),
        .I2(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_gray_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5666)) 
    \wr_gray_ptr[1]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(\wr_bin_ptr_reg_n_0_[1] ),
        .I2(p_0_in__0__0),
        .I3(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \wr_gray_ptr[2]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[3] ),
        .I1(\wr_bin_ptr_reg_n_0_[2] ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .I3(\wr_bin_ptr_reg_n_0_[0] ),
        .I4(p_0_in__0__0),
        .O(wr_gray_next[2]));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \wr_gray_ptr[3]_i_1__0 
       (.I0(\wr_gray_ptr_reg_n_0_[4] ),
        .I1(\wr_bin_ptr_reg_n_0_[3] ),
        .I2(\wr_bin_ptr_reg_n_0_[2] ),
        .I3(p_0_in__0__0),
        .I4(\wr_bin_ptr_reg_n_0_[0] ),
        .I5(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_gray_next[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wr_gray_ptr[4]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(p_0_in__0__0),
        .I2(\wr_bin_ptr_reg_n_0_[0] ),
        .I3(\wr_bin_ptr_reg_n_0_[1] ),
        .I4(\wr_bin_ptr_reg_n_0_[3] ),
        .I5(\wr_gray_ptr_reg_n_0_[4] ),
        .O(wr_bin_next));
  FDCE \wr_gray_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[0]),
        .Q(\wr_gray_ptr_reg_n_0_[0] ));
  FDCE \wr_gray_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[1]),
        .Q(\wr_gray_ptr_reg_n_0_[1] ));
  FDCE \wr_gray_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[2]),
        .Q(\wr_gray_ptr_reg_n_0_[2] ));
  FDCE \wr_gray_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[3]),
        .Q(\wr_gray_ptr_reg_n_0_[3] ));
  FDCE \wr_gray_ptr_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next),
        .Q(\wr_gray_ptr_reg_n_0_[4] ));
  FDCE \wr_gray_sync1_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_ptr_reg_n_0_[0] ),
        .Q(\wr_gray_sync1_reg_n_0_[0] ));
  FDCE \wr_gray_sync1_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_ptr_reg_n_0_[1] ),
        .Q(\wr_gray_sync1_reg_n_0_[1] ));
  FDCE \wr_gray_sync1_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_ptr_reg_n_0_[2] ),
        .Q(\wr_gray_sync1_reg_n_0_[2] ));
  FDCE \wr_gray_sync1_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_ptr_reg_n_0_[3] ),
        .Q(\wr_gray_sync1_reg_n_0_[3] ));
  FDCE \wr_gray_sync1_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_ptr_reg_n_0_[4] ),
        .Q(\wr_gray_sync1_reg_n_0_[4] ));
  FDCE \wr_gray_sync2_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_sync1_reg_n_0_[0] ),
        .Q(\wr_gray_sync2_reg_n_0_[0] ));
  FDCE \wr_gray_sync2_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_sync1_reg_n_0_[1] ),
        .Q(\wr_gray_sync2_reg_n_0_[1] ));
  FDCE \wr_gray_sync2_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_sync1_reg_n_0_[2] ),
        .Q(\wr_gray_sync2_reg_n_0_[2] ));
  FDCE \wr_gray_sync2_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_sync1_reg_n_0_[3] ),
        .Q(\wr_gray_sync2_reg_n_0_[3] ));
  FDCE \wr_gray_sync2_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(\wr_gray_sync1_reg_n_0_[4] ),
        .Q(\wr_gray_sync2_reg_n_0_[4] ));
endmodule

(* ORIG_REF_NAME = "axi4_lite_slave" *) 
module ps_pl_system_top_system_level_0_3_axi4_lite_slave
   (awready_reg_0,
    arready_reg_0,
    reg1_wr_pulse,
    s_axi_bvalid,
    s_axi_rvalid,
    \s_axis_tdata[31] ,
    Q,
    \reg0_reg[31]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    s_axis_tdata,
    rx_af_full,
    s_axis_tvalid,
    \rdata_reg[31]_0 ,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_wdata,
    D,
    s_axi_awaddr,
    s_axi_wstrb);
  output awready_reg_0;
  output arready_reg_0;
  output reg1_wr_pulse;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output [31:0]\s_axis_tdata[31] ;
  output [1:0]Q;
  output [16:0]\reg0_reg[31]_0 ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input [31:0]s_axis_tdata;
  input rx_af_full;
  input s_axis_tvalid;
  input [29:0]\rdata_reg[31]_0 ;
  input [1:0]s_axi_araddr;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input [31:0]s_axi_wdata;
  input [1:0]D;
  input [1:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;

  wire [1:0]D;
  wire [1:0]Q;
  wire arready0;
  wire arready_reg_0;
  wire awready0;
  wire awready_i_2_n_0;
  wire awready_reg_0;
  wire bvalid_i_1_n_0;
  wire \rdata[10]_i_1_n_0 ;
  wire \rdata[11]_i_1_n_0 ;
  wire \rdata[12]_i_1_n_0 ;
  wire \rdata[13]_i_1_n_0 ;
  wire \rdata[14]_i_1_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[16]_i_1_n_0 ;
  wire \rdata[17]_i_1_n_0 ;
  wire \rdata[18]_i_1_n_0 ;
  wire \rdata[19]_i_1_n_0 ;
  wire \rdata[20]_i_1_n_0 ;
  wire \rdata[21]_i_1_n_0 ;
  wire \rdata[22]_i_1_n_0 ;
  wire \rdata[23]_i_1_n_0 ;
  wire \rdata[24]_i_1_n_0 ;
  wire \rdata[25]_i_1_n_0 ;
  wire \rdata[26]_i_1_n_0 ;
  wire \rdata[27]_i_1_n_0 ;
  wire \rdata[28]_i_1_n_0 ;
  wire \rdata[29]_i_1_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[30]_i_1_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[5]_i_1_n_0 ;
  wire \rdata[6]_i_1_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[8]_i_1_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire [29:0]\rdata_reg[31]_0 ;
  wire \reg0[15]_i_1_n_0 ;
  wire \reg0[23]_i_1_n_0 ;
  wire \reg0[31]_i_1_n_0 ;
  wire \reg0[7]_i_1_n_0 ;
  wire [16:0]\reg0_reg[31]_0 ;
  wire \reg0_reg_n_0_[16] ;
  wire \reg0_reg_n_0_[17] ;
  wire \reg0_reg_n_0_[18] ;
  wire \reg0_reg_n_0_[19] ;
  wire \reg0_reg_n_0_[20] ;
  wire \reg0_reg_n_0_[21] ;
  wire \reg0_reg_n_0_[22] ;
  wire \reg0_reg_n_0_[23] ;
  wire \reg0_reg_n_0_[24] ;
  wire \reg0_reg_n_0_[25] ;
  wire \reg0_reg_n_0_[26] ;
  wire \reg0_reg_n_0_[27] ;
  wire \reg0_reg_n_0_[28] ;
  wire \reg0_reg_n_0_[29] ;
  wire \reg0_reg_n_0_[30] ;
  wire [31:2]reg1;
  wire \reg1[15]_i_1_n_0 ;
  wire \reg1[23]_i_1_n_0 ;
  wire \reg1[31]_i_1_n_0 ;
  wire \reg1[7]_i_1_n_0 ;
  wire reg1_wr_pulse;
  wire reg1_wr_pulse1_out;
  wire rvalid02_out__0;
  wire rvalid_i_1_n_0;
  wire rx_af_full;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire [31:0]\s_axis_tdata[31] ;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    arready_i_1
       (.I0(s_axi_arvalid),
        .I1(arready_reg_0),
        .O(arready0));
  FDCE arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(awready_i_2_n_0),
        .D(arready0),
        .Q(arready_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    awready_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(awready_reg_0),
        .O(awready0));
  LUT1 #(
    .INIT(2'h1)) 
    awready_i_2
       (.I0(s_axi_aresetn),
        .O(awready_i_2_n_0));
  FDCE awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(awready_i_2_n_0),
        .D(awready0),
        .Q(awready_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00FF8080)) 
    bvalid_i_1
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(bvalid_i_1_n_0));
  FDCE bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(awready_i_2_n_0),
        .D(bvalid_i_1_n_0),
        .Q(s_axi_bvalid));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_10
       (.I0(s_axis_tdata[9]),
        .I1(reg1[9]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [9]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_11
       (.I0(s_axis_tdata[8]),
        .I1(reg1[8]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [8]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_12
       (.I0(s_axis_tdata[11]),
        .I1(reg1[11]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [11]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_13
       (.I0(s_axis_tdata[10]),
        .I1(reg1[10]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [10]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_14
       (.I0(s_axis_tdata[13]),
        .I1(reg1[13]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [13]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_15
       (.I0(s_axis_tdata[12]),
        .I1(reg1[12]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [12]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_2
       (.I0(s_axis_tdata[1]),
        .I1(Q[1]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [1]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_3
       (.I0(s_axis_tdata[0]),
        .I1(Q[0]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [0]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_4
       (.I0(s_axis_tdata[3]),
        .I1(reg1[3]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [3]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_5
       (.I0(s_axis_tdata[2]),
        .I1(reg1[2]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [2]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_6
       (.I0(s_axis_tdata[5]),
        .I1(reg1[5]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [5]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_7
       (.I0(s_axis_tdata[4]),
        .I1(reg1[4]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [4]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_8
       (.I0(s_axis_tdata[7]),
        .I1(reg1[7]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [7]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_0_13_i_9
       (.I0(s_axis_tdata[6]),
        .I1(reg1[6]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [6]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_1
       (.I0(s_axis_tdata[15]),
        .I1(reg1[15]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [15]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_10
       (.I0(s_axis_tdata[22]),
        .I1(reg1[22]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [22]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_11
       (.I0(s_axis_tdata[25]),
        .I1(reg1[25]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [25]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_12
       (.I0(s_axis_tdata[24]),
        .I1(reg1[24]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [24]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_13
       (.I0(s_axis_tdata[27]),
        .I1(reg1[27]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [27]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_14
       (.I0(s_axis_tdata[26]),
        .I1(reg1[26]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [26]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_2
       (.I0(s_axis_tdata[14]),
        .I1(reg1[14]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [14]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_3
       (.I0(s_axis_tdata[17]),
        .I1(reg1[17]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [17]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_4
       (.I0(s_axis_tdata[16]),
        .I1(reg1[16]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [16]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_5
       (.I0(s_axis_tdata[19]),
        .I1(reg1[19]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [19]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_6
       (.I0(s_axis_tdata[18]),
        .I1(reg1[18]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [18]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_7
       (.I0(s_axis_tdata[21]),
        .I1(reg1[21]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [21]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_8
       (.I0(s_axis_tdata[20]),
        .I1(reg1[20]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [20]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_14_27_i_9
       (.I0(s_axis_tdata[23]),
        .I1(reg1[23]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [23]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_28_33_i_1
       (.I0(s_axis_tdata[29]),
        .I1(reg1[29]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [29]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_28_33_i_2
       (.I0(s_axis_tdata[28]),
        .I1(reg1[28]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [28]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_28_33_i_3
       (.I0(s_axis_tdata[31]),
        .I1(reg1[31]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [31]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_15_28_33_i_4
       (.I0(s_axis_tdata[30]),
        .I1(reg1[30]),
        .I2(reg1_wr_pulse),
        .I3(rx_af_full),
        .I4(s_axis_tvalid),
        .O(\s_axis_tdata[31] [30]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[10]_i_1 
       (.I0(\reg0_reg[31]_0 [10]),
        .I1(reg1[10]),
        .I2(\rdata_reg[31]_0 [8]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[11]_i_1 
       (.I0(\reg0_reg[31]_0 [11]),
        .I1(reg1[11]),
        .I2(\rdata_reg[31]_0 [9]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[12]_i_1 
       (.I0(\reg0_reg[31]_0 [12]),
        .I1(reg1[12]),
        .I2(\rdata_reg[31]_0 [10]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[13]_i_1 
       (.I0(\reg0_reg[31]_0 [13]),
        .I1(reg1[13]),
        .I2(\rdata_reg[31]_0 [11]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[14]_i_1 
       (.I0(\reg0_reg[31]_0 [14]),
        .I1(reg1[14]),
        .I2(\rdata_reg[31]_0 [12]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[15]_i_1 
       (.I0(\reg0_reg[31]_0 [15]),
        .I1(reg1[15]),
        .I2(\rdata_reg[31]_0 [13]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[16]_i_1 
       (.I0(\reg0_reg_n_0_[16] ),
        .I1(reg1[16]),
        .I2(\rdata_reg[31]_0 [14]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[17]_i_1 
       (.I0(\reg0_reg_n_0_[17] ),
        .I1(reg1[17]),
        .I2(\rdata_reg[31]_0 [15]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[18]_i_1 
       (.I0(\reg0_reg_n_0_[18] ),
        .I1(reg1[18]),
        .I2(\rdata_reg[31]_0 [16]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[19]_i_1 
       (.I0(\reg0_reg_n_0_[19] ),
        .I1(reg1[19]),
        .I2(\rdata_reg[31]_0 [17]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[20]_i_1 
       (.I0(\reg0_reg_n_0_[20] ),
        .I1(reg1[20]),
        .I2(\rdata_reg[31]_0 [18]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[21]_i_1 
       (.I0(\reg0_reg_n_0_[21] ),
        .I1(reg1[21]),
        .I2(\rdata_reg[31]_0 [19]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[22]_i_1 
       (.I0(\reg0_reg_n_0_[22] ),
        .I1(reg1[22]),
        .I2(\rdata_reg[31]_0 [20]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[23]_i_1 
       (.I0(\reg0_reg_n_0_[23] ),
        .I1(reg1[23]),
        .I2(\rdata_reg[31]_0 [21]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[24]_i_1 
       (.I0(\reg0_reg_n_0_[24] ),
        .I1(reg1[24]),
        .I2(\rdata_reg[31]_0 [22]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[25]_i_1 
       (.I0(\reg0_reg_n_0_[25] ),
        .I1(reg1[25]),
        .I2(\rdata_reg[31]_0 [23]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[26]_i_1 
       (.I0(\reg0_reg_n_0_[26] ),
        .I1(reg1[26]),
        .I2(\rdata_reg[31]_0 [24]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[27]_i_1 
       (.I0(\reg0_reg_n_0_[27] ),
        .I1(reg1[27]),
        .I2(\rdata_reg[31]_0 [25]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[28]_i_1 
       (.I0(\reg0_reg_n_0_[28] ),
        .I1(reg1[28]),
        .I2(\rdata_reg[31]_0 [26]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[29]_i_1 
       (.I0(\reg0_reg_n_0_[29] ),
        .I1(reg1[29]),
        .I2(\rdata_reg[31]_0 [27]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[2]_i_1 
       (.I0(\reg0_reg[31]_0 [2]),
        .I1(reg1[2]),
        .I2(\rdata_reg[31]_0 [0]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[30]_i_1 
       (.I0(\reg0_reg_n_0_[30] ),
        .I1(reg1[30]),
        .I2(\rdata_reg[31]_0 [28]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[31]_i_1 
       (.I0(\reg0_reg[31]_0 [16]),
        .I1(reg1[31]),
        .I2(\rdata_reg[31]_0 [29]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[3]_i_1 
       (.I0(\reg0_reg[31]_0 [3]),
        .I1(reg1[3]),
        .I2(\rdata_reg[31]_0 [1]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[4]_i_1 
       (.I0(\reg0_reg[31]_0 [4]),
        .I1(reg1[4]),
        .I2(\rdata_reg[31]_0 [2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[5]_i_1 
       (.I0(\reg0_reg[31]_0 [5]),
        .I1(reg1[5]),
        .I2(\rdata_reg[31]_0 [3]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[6]_i_1 
       (.I0(\reg0_reg[31]_0 [6]),
        .I1(reg1[6]),
        .I2(\rdata_reg[31]_0 [4]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[7]_i_1 
       (.I0(\reg0_reg[31]_0 [7]),
        .I1(reg1[7]),
        .I2(\rdata_reg[31]_0 [5]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[8]_i_1 
       (.I0(\reg0_reg[31]_0 [8]),
        .I1(reg1[8]),
        .I2(\rdata_reg[31]_0 [6]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[9]_i_1 
       (.I0(\reg0_reg[31]_0 [9]),
        .I1(reg1[9]),
        .I2(\rdata_reg[31]_0 [7]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[9]_i_1_n_0 ));
  FDCE \rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(D[0]),
        .Q(s_axi_rdata[0]));
  FDCE \rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]));
  FDCE \rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]));
  FDCE \rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]));
  FDCE \rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]));
  FDCE \rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]));
  FDCE \rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]));
  FDCE \rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]));
  FDCE \rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]));
  FDCE \rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]));
  FDCE \rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]));
  FDCE \rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(D[1]),
        .Q(s_axi_rdata[1]));
  FDCE \rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]));
  FDCE \rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]));
  FDCE \rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]));
  FDCE \rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]));
  FDCE \rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]));
  FDCE \rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]));
  FDCE \rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]));
  FDCE \rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]));
  FDCE \rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]));
  FDCE \rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]));
  FDCE \rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]));
  FDCE \rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]));
  FDCE \rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[31]_i_1_n_0 ),
        .Q(s_axi_rdata[31]));
  FDCE \rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]));
  FDCE \rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]));
  FDCE \rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]));
  FDCE \rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]));
  FDCE \rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]));
  FDCE \rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]));
  FDCE \rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(rvalid02_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \reg0[15]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[1]),
        .I5(s_axi_awaddr[0]),
        .O(\reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \reg0[23]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[2]),
        .I5(s_axi_awaddr[0]),
        .O(\reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \reg0[31]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[3]),
        .I5(s_axi_awaddr[0]),
        .O(\reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \reg0[7]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[0]),
        .I5(s_axi_awaddr[0]),
        .O(\reg0[7]_i_1_n_0 ));
  FDCE \reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(\reg0_reg[31]_0 [0]));
  FDCE \reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(\reg0_reg[31]_0 [10]));
  FDCE \reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(\reg0_reg[31]_0 [11]));
  FDCE \reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(\reg0_reg[31]_0 [12]));
  FDCE \reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(\reg0_reg[31]_0 [13]));
  FDCE \reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(\reg0_reg[31]_0 [14]));
  FDCE \reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(\reg0_reg[31]_0 [15]));
  FDCE \reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[16]),
        .Q(\reg0_reg_n_0_[16] ));
  FDCE \reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[17]),
        .Q(\reg0_reg_n_0_[17] ));
  FDCE \reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[18]),
        .Q(\reg0_reg_n_0_[18] ));
  FDCE \reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[19]),
        .Q(\reg0_reg_n_0_[19] ));
  FDCE \reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(\reg0_reg[31]_0 [1]));
  FDCE \reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[20]),
        .Q(\reg0_reg_n_0_[20] ));
  FDCE \reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[21]),
        .Q(\reg0_reg_n_0_[21] ));
  FDCE \reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[22]),
        .Q(\reg0_reg_n_0_[22] ));
  FDCE \reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[23]),
        .Q(\reg0_reg_n_0_[23] ));
  FDCE \reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[24]),
        .Q(\reg0_reg_n_0_[24] ));
  FDCE \reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[25]),
        .Q(\reg0_reg_n_0_[25] ));
  FDCE \reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[26]),
        .Q(\reg0_reg_n_0_[26] ));
  FDCE \reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[27]),
        .Q(\reg0_reg_n_0_[27] ));
  FDCE \reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[28]),
        .Q(\reg0_reg_n_0_[28] ));
  FDCE \reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[29]),
        .Q(\reg0_reg_n_0_[29] ));
  FDCE \reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(\reg0_reg[31]_0 [2]));
  FDCE \reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[30]),
        .Q(\reg0_reg_n_0_[30] ));
  FDCE \reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[31]),
        .Q(\reg0_reg[31]_0 [16]));
  FDCE \reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(\reg0_reg[31]_0 [3]));
  FDCE \reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(\reg0_reg[31]_0 [4]));
  FDCE \reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(\reg0_reg[31]_0 [5]));
  FDCE \reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(\reg0_reg[31]_0 [6]));
  FDCE \reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(\reg0_reg[31]_0 [7]));
  FDCE \reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(\reg0_reg[31]_0 [8]));
  FDCE \reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(\reg0_reg[31]_0 [9]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \reg1[15]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[0]),
        .I5(s_axi_wstrb[1]),
        .O(\reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \reg1[23]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[0]),
        .I5(s_axi_wstrb[2]),
        .O(\reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \reg1[31]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[0]),
        .I5(s_axi_wstrb[3]),
        .O(\reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \reg1[7]_i_1 
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[0]),
        .I5(s_axi_wstrb[0]),
        .O(\reg1[7]_i_1_n_0 ));
  FDCE \reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(Q[0]));
  FDCE \reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(reg1[10]));
  FDCE \reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(reg1[11]));
  FDCE \reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(reg1[12]));
  FDCE \reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(reg1[13]));
  FDCE \reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(reg1[14]));
  FDCE \reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(reg1[15]));
  FDCE \reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[16]),
        .Q(reg1[16]));
  FDCE \reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[17]),
        .Q(reg1[17]));
  FDCE \reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[18]),
        .Q(reg1[18]));
  FDCE \reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[19]),
        .Q(reg1[19]));
  FDCE \reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(Q[1]));
  FDCE \reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[20]),
        .Q(reg1[20]));
  FDCE \reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[21]),
        .Q(reg1[21]));
  FDCE \reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[22]),
        .Q(reg1[22]));
  FDCE \reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg1[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[23]),
        .Q(reg1[23]));
  FDCE \reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[24]),
        .Q(reg1[24]));
  FDCE \reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[25]),
        .Q(reg1[25]));
  FDCE \reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[26]),
        .Q(reg1[26]));
  FDCE \reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[27]),
        .Q(reg1[27]));
  FDCE \reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[28]),
        .Q(reg1[28]));
  FDCE \reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[29]),
        .Q(reg1[29]));
  FDCE \reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(reg1[2]));
  FDCE \reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[30]),
        .Q(reg1[30]));
  FDCE \reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[31]),
        .Q(reg1[31]));
  FDCE \reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(reg1[3]));
  FDCE \reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(reg1[4]));
  FDCE \reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(reg1[5]));
  FDCE \reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(reg1[6]));
  FDCE \reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(reg1[7]));
  FDCE \reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(reg1[8]));
  FDCE \reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(reg1[9]));
  LUT5 #(
    .INIT(32'h04000000)) 
    reg1_wr_pulse_i_1
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .I2(awready_reg_0),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .O(reg1_wr_pulse1_out));
  FDCE reg1_wr_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(awready_i_2_n_0),
        .D(reg1_wr_pulse1_out),
        .Q(reg1_wr_pulse));
  LUT3 #(
    .INIT(8'h20)) 
    rvalid02_out
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(arready_reg_0),
        .O(rvalid02_out__0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    rvalid_i_1
       (.I0(arready_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(rvalid_i_1_n_0));
  FDCE rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(awready_i_2_n_0),
        .D(rvalid_i_1_n_0),
        .Q(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "pipelined_mac" *) 
module ps_pl_system_top_system_level_0_3_pipelined_mac
   (E,
    result_reg_reg,
    clk_200MHz,
    Q,
    rd_data,
    \result_reg_reg[0]_0 ,
    mac_in_valid_reg,
    \result_reg_reg[31]_0 );
  output [0:0]E;
  output [31:0]result_reg_reg;
  input clk_200MHz;
  input [16:0]Q;
  input [15:0]rd_data;
  input \result_reg_reg[0]_0 ;
  input mac_in_valid_reg;
  input \result_reg_reg[31]_0 ;

  wire [0:0]E;
  wire [16:0]Q;
  wire clk_200MHz;
  wire clr_at_stage1;
  wire mac_in_valid_reg;
  wire mult_reg0_n_100;
  wire mult_reg0_n_101;
  wire mult_reg0_n_102;
  wire mult_reg0_n_103;
  wire mult_reg0_n_104;
  wire mult_reg0_n_105;
  wire mult_reg0_n_74;
  wire mult_reg0_n_75;
  wire mult_reg0_n_76;
  wire mult_reg0_n_77;
  wire mult_reg0_n_78;
  wire mult_reg0_n_79;
  wire mult_reg0_n_80;
  wire mult_reg0_n_81;
  wire mult_reg0_n_82;
  wire mult_reg0_n_83;
  wire mult_reg0_n_84;
  wire mult_reg0_n_85;
  wire mult_reg0_n_86;
  wire mult_reg0_n_87;
  wire mult_reg0_n_88;
  wire mult_reg0_n_89;
  wire mult_reg0_n_90;
  wire mult_reg0_n_91;
  wire mult_reg0_n_92;
  wire mult_reg0_n_93;
  wire mult_reg0_n_94;
  wire mult_reg0_n_95;
  wire mult_reg0_n_96;
  wire mult_reg0_n_97;
  wire mult_reg0_n_98;
  wire mult_reg0_n_99;
  wire out_valid_i_1_n_0;
  wire [15:0]rd_data;
  wire \result_reg[0]_i_10_n_0 ;
  wire \result_reg[0]_i_11_n_0 ;
  wire \result_reg[0]_i_12_n_0 ;
  wire \result_reg[0]_i_13_n_0 ;
  wire \result_reg[0]_i_14_n_0 ;
  wire \result_reg[0]_i_15_n_0 ;
  wire \result_reg[0]_i_16_n_0 ;
  wire \result_reg[0]_i_17_n_0 ;
  wire \result_reg[0]_i_2_n_0 ;
  wire \result_reg[0]_i_3_n_0 ;
  wire \result_reg[0]_i_4_n_0 ;
  wire \result_reg[0]_i_5_n_0 ;
  wire \result_reg[0]_i_6_n_0 ;
  wire \result_reg[0]_i_7_n_0 ;
  wire \result_reg[0]_i_8_n_0 ;
  wire \result_reg[0]_i_9_n_0 ;
  wire \result_reg[16]_i_10_n_0 ;
  wire \result_reg[16]_i_11_n_0 ;
  wire \result_reg[16]_i_12_n_0 ;
  wire \result_reg[16]_i_13_n_0 ;
  wire \result_reg[16]_i_14_n_0 ;
  wire \result_reg[16]_i_15_n_0 ;
  wire \result_reg[16]_i_16_n_0 ;
  wire \result_reg[16]_i_17_n_0 ;
  wire \result_reg[16]_i_2_n_0 ;
  wire \result_reg[16]_i_3_n_0 ;
  wire \result_reg[16]_i_4_n_0 ;
  wire \result_reg[16]_i_5_n_0 ;
  wire \result_reg[16]_i_6_n_0 ;
  wire \result_reg[16]_i_7_n_0 ;
  wire \result_reg[16]_i_8_n_0 ;
  wire \result_reg[16]_i_9_n_0 ;
  wire \result_reg[24]_i_10_n_0 ;
  wire \result_reg[24]_i_11_n_0 ;
  wire \result_reg[24]_i_12_n_0 ;
  wire \result_reg[24]_i_13_n_0 ;
  wire \result_reg[24]_i_14_n_0 ;
  wire \result_reg[24]_i_15_n_0 ;
  wire \result_reg[24]_i_16_n_0 ;
  wire \result_reg[24]_i_2_n_0 ;
  wire \result_reg[24]_i_3_n_0 ;
  wire \result_reg[24]_i_4_n_0 ;
  wire \result_reg[24]_i_5_n_0 ;
  wire \result_reg[24]_i_6_n_0 ;
  wire \result_reg[24]_i_7_n_0 ;
  wire \result_reg[24]_i_8_n_0 ;
  wire \result_reg[24]_i_9_n_0 ;
  wire \result_reg[8]_i_10_n_0 ;
  wire \result_reg[8]_i_11_n_0 ;
  wire \result_reg[8]_i_12_n_0 ;
  wire \result_reg[8]_i_13_n_0 ;
  wire \result_reg[8]_i_14_n_0 ;
  wire \result_reg[8]_i_15_n_0 ;
  wire \result_reg[8]_i_16_n_0 ;
  wire \result_reg[8]_i_17_n_0 ;
  wire \result_reg[8]_i_2_n_0 ;
  wire \result_reg[8]_i_3_n_0 ;
  wire \result_reg[8]_i_4_n_0 ;
  wire \result_reg[8]_i_5_n_0 ;
  wire \result_reg[8]_i_6_n_0 ;
  wire \result_reg[8]_i_7_n_0 ;
  wire \result_reg[8]_i_8_n_0 ;
  wire \result_reg[8]_i_9_n_0 ;
  wire [31:0]result_reg_reg;
  wire \result_reg_reg[0]_0 ;
  wire \result_reg_reg[0]_i_1_n_0 ;
  wire \result_reg_reg[0]_i_1_n_1 ;
  wire \result_reg_reg[0]_i_1_n_10 ;
  wire \result_reg_reg[0]_i_1_n_11 ;
  wire \result_reg_reg[0]_i_1_n_12 ;
  wire \result_reg_reg[0]_i_1_n_13 ;
  wire \result_reg_reg[0]_i_1_n_14 ;
  wire \result_reg_reg[0]_i_1_n_15 ;
  wire \result_reg_reg[0]_i_1_n_2 ;
  wire \result_reg_reg[0]_i_1_n_3 ;
  wire \result_reg_reg[0]_i_1_n_4 ;
  wire \result_reg_reg[0]_i_1_n_5 ;
  wire \result_reg_reg[0]_i_1_n_6 ;
  wire \result_reg_reg[0]_i_1_n_7 ;
  wire \result_reg_reg[0]_i_1_n_8 ;
  wire \result_reg_reg[0]_i_1_n_9 ;
  wire \result_reg_reg[16]_i_1_n_0 ;
  wire \result_reg_reg[16]_i_1_n_1 ;
  wire \result_reg_reg[16]_i_1_n_10 ;
  wire \result_reg_reg[16]_i_1_n_11 ;
  wire \result_reg_reg[16]_i_1_n_12 ;
  wire \result_reg_reg[16]_i_1_n_13 ;
  wire \result_reg_reg[16]_i_1_n_14 ;
  wire \result_reg_reg[16]_i_1_n_15 ;
  wire \result_reg_reg[16]_i_1_n_2 ;
  wire \result_reg_reg[16]_i_1_n_3 ;
  wire \result_reg_reg[16]_i_1_n_4 ;
  wire \result_reg_reg[16]_i_1_n_5 ;
  wire \result_reg_reg[16]_i_1_n_6 ;
  wire \result_reg_reg[16]_i_1_n_7 ;
  wire \result_reg_reg[16]_i_1_n_8 ;
  wire \result_reg_reg[16]_i_1_n_9 ;
  wire \result_reg_reg[24]_i_1_n_1 ;
  wire \result_reg_reg[24]_i_1_n_10 ;
  wire \result_reg_reg[24]_i_1_n_11 ;
  wire \result_reg_reg[24]_i_1_n_12 ;
  wire \result_reg_reg[24]_i_1_n_13 ;
  wire \result_reg_reg[24]_i_1_n_14 ;
  wire \result_reg_reg[24]_i_1_n_15 ;
  wire \result_reg_reg[24]_i_1_n_2 ;
  wire \result_reg_reg[24]_i_1_n_3 ;
  wire \result_reg_reg[24]_i_1_n_4 ;
  wire \result_reg_reg[24]_i_1_n_5 ;
  wire \result_reg_reg[24]_i_1_n_6 ;
  wire \result_reg_reg[24]_i_1_n_7 ;
  wire \result_reg_reg[24]_i_1_n_8 ;
  wire \result_reg_reg[24]_i_1_n_9 ;
  wire \result_reg_reg[31]_0 ;
  wire \result_reg_reg[8]_i_1_n_0 ;
  wire \result_reg_reg[8]_i_1_n_1 ;
  wire \result_reg_reg[8]_i_1_n_10 ;
  wire \result_reg_reg[8]_i_1_n_11 ;
  wire \result_reg_reg[8]_i_1_n_12 ;
  wire \result_reg_reg[8]_i_1_n_13 ;
  wire \result_reg_reg[8]_i_1_n_14 ;
  wire \result_reg_reg[8]_i_1_n_15 ;
  wire \result_reg_reg[8]_i_1_n_2 ;
  wire \result_reg_reg[8]_i_1_n_3 ;
  wire \result_reg_reg[8]_i_1_n_4 ;
  wire \result_reg_reg[8]_i_1_n_5 ;
  wire \result_reg_reg[8]_i_1_n_6 ;
  wire \result_reg_reg[8]_i_1_n_7 ;
  wire \result_reg_reg[8]_i_1_n_8 ;
  wire \result_reg_reg[8]_i_1_n_9 ;
  wire valid_stage1;
  wire NLW_mult_reg0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_reg0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_reg0_OVERFLOW_UNCONNECTED;
  wire NLW_mult_reg0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_reg0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_reg0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_reg0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_reg0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_reg0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_mult_reg0_P_UNCONNECTED;
  wire [47:0]NLW_mult_reg0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mult_reg0_XOROUT_UNCONNECTED;
  wire [7:7]\NLW_result_reg_reg[24]_i_1_CO_UNCONNECTED ;

  FDCE clr_at_stage1_reg
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(Q[16]),
        .Q(clr_at_stage1));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mult_reg0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rd_data}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_reg0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,Q[15:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_reg0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_reg0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_reg0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_200MHz),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_reg0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_reg0_OVERFLOW_UNCONNECTED),
        .P({NLW_mult_reg0_P_UNCONNECTED[47:32],mult_reg0_n_74,mult_reg0_n_75,mult_reg0_n_76,mult_reg0_n_77,mult_reg0_n_78,mult_reg0_n_79,mult_reg0_n_80,mult_reg0_n_81,mult_reg0_n_82,mult_reg0_n_83,mult_reg0_n_84,mult_reg0_n_85,mult_reg0_n_86,mult_reg0_n_87,mult_reg0_n_88,mult_reg0_n_89,mult_reg0_n_90,mult_reg0_n_91,mult_reg0_n_92,mult_reg0_n_93,mult_reg0_n_94,mult_reg0_n_95,mult_reg0_n_96,mult_reg0_n_97,mult_reg0_n_98,mult_reg0_n_99,mult_reg0_n_100,mult_reg0_n_101,mult_reg0_n_102,mult_reg0_n_103,mult_reg0_n_104,mult_reg0_n_105}),
        .PATTERNBDETECT(NLW_mult_reg0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_reg0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult_reg0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_reg0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mult_reg0_XOROUT_UNCONNECTED[7:0]));
  LUT2 #(
    .INIT(4'hE)) 
    out_valid_i_1
       (.I0(clr_at_stage1),
        .I1(valid_stage1),
        .O(out_valid_i_1_n_0));
  FDCE out_valid_reg
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(out_valid_i_1_n_0),
        .Q(E));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_10 
       (.I0(result_reg_reg[7]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_98),
        .O(\result_reg[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_11 
       (.I0(result_reg_reg[6]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_99),
        .O(\result_reg[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_12 
       (.I0(result_reg_reg[5]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_100),
        .O(\result_reg[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_13 
       (.I0(result_reg_reg[4]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_101),
        .O(\result_reg[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_14 
       (.I0(result_reg_reg[3]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_102),
        .O(\result_reg[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_15 
       (.I0(result_reg_reg[2]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_103),
        .O(\result_reg[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_16 
       (.I0(result_reg_reg[1]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_104),
        .O(\result_reg[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[0]_i_17 
       (.I0(result_reg_reg[0]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_105),
        .O(\result_reg[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_2 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_98),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_3 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_99),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_4 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_100),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_5 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_101),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_6 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_102),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_7 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_103),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_8 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_104),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[0]_i_9 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_105),
        .I2(clr_at_stage1),
        .O(\result_reg[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_10 
       (.I0(result_reg_reg[23]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_82),
        .O(\result_reg[16]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_11 
       (.I0(result_reg_reg[22]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_83),
        .O(\result_reg[16]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_12 
       (.I0(result_reg_reg[21]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_84),
        .O(\result_reg[16]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_13 
       (.I0(result_reg_reg[20]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_85),
        .O(\result_reg[16]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_14 
       (.I0(result_reg_reg[19]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_86),
        .O(\result_reg[16]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_15 
       (.I0(result_reg_reg[18]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_87),
        .O(\result_reg[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_16 
       (.I0(result_reg_reg[17]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_88),
        .O(\result_reg[16]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[16]_i_17 
       (.I0(result_reg_reg[16]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_89),
        .O(\result_reg[16]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_2 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_82),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_3 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_83),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_4 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_84),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_5 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_85),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_6 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_86),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_7 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_87),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_8 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_88),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[16]_i_9 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_89),
        .I2(clr_at_stage1),
        .O(\result_reg[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_10 
       (.I0(result_reg_reg[30]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_75),
        .O(\result_reg[24]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_11 
       (.I0(result_reg_reg[29]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_76),
        .O(\result_reg[24]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_12 
       (.I0(result_reg_reg[28]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_77),
        .O(\result_reg[24]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_13 
       (.I0(result_reg_reg[27]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_78),
        .O(\result_reg[24]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_14 
       (.I0(result_reg_reg[26]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_79),
        .O(\result_reg[24]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_15 
       (.I0(result_reg_reg[25]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_80),
        .O(\result_reg[24]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_16 
       (.I0(result_reg_reg[24]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_81),
        .O(\result_reg[24]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[24]_i_2 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_75),
        .I2(clr_at_stage1),
        .O(\result_reg[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[24]_i_3 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_76),
        .I2(clr_at_stage1),
        .O(\result_reg[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[24]_i_4 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_77),
        .I2(clr_at_stage1),
        .O(\result_reg[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[24]_i_5 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_78),
        .I2(clr_at_stage1),
        .O(\result_reg[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[24]_i_6 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_79),
        .I2(clr_at_stage1),
        .O(\result_reg[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[24]_i_7 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_80),
        .I2(clr_at_stage1),
        .O(\result_reg[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[24]_i_8 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_81),
        .I2(clr_at_stage1),
        .O(\result_reg[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[24]_i_9 
       (.I0(result_reg_reg[31]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_74),
        .O(\result_reg[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_10 
       (.I0(result_reg_reg[15]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_90),
        .O(\result_reg[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_11 
       (.I0(result_reg_reg[14]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_91),
        .O(\result_reg[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_12 
       (.I0(result_reg_reg[13]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_92),
        .O(\result_reg[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_13 
       (.I0(result_reg_reg[12]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_93),
        .O(\result_reg[8]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_14 
       (.I0(result_reg_reg[11]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_94),
        .O(\result_reg[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_15 
       (.I0(result_reg_reg[10]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_95),
        .O(\result_reg[8]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_16 
       (.I0(result_reg_reg[9]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_96),
        .O(\result_reg[8]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hD222)) 
    \result_reg[8]_i_17 
       (.I0(result_reg_reg[8]),
        .I1(clr_at_stage1),
        .I2(\result_reg_reg[31]_0 ),
        .I3(mult_reg0_n_97),
        .O(\result_reg[8]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_2 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_90),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_3 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_91),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_4 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_92),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_5 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_93),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_6 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_94),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_7 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_95),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_8 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_96),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_reg[8]_i_9 
       (.I0(\result_reg_reg[31]_0 ),
        .I1(mult_reg0_n_97),
        .I2(clr_at_stage1),
        .O(\result_reg[8]_i_9_n_0 ));
  FDCE \result_reg_reg[0] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_15 ),
        .Q(result_reg_reg[0]));
  CARRY8 \result_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_reg_reg[0]_i_1_n_0 ,\result_reg_reg[0]_i_1_n_1 ,\result_reg_reg[0]_i_1_n_2 ,\result_reg_reg[0]_i_1_n_3 ,\result_reg_reg[0]_i_1_n_4 ,\result_reg_reg[0]_i_1_n_5 ,\result_reg_reg[0]_i_1_n_6 ,\result_reg_reg[0]_i_1_n_7 }),
        .DI({\result_reg[0]_i_2_n_0 ,\result_reg[0]_i_3_n_0 ,\result_reg[0]_i_4_n_0 ,\result_reg[0]_i_5_n_0 ,\result_reg[0]_i_6_n_0 ,\result_reg[0]_i_7_n_0 ,\result_reg[0]_i_8_n_0 ,\result_reg[0]_i_9_n_0 }),
        .O({\result_reg_reg[0]_i_1_n_8 ,\result_reg_reg[0]_i_1_n_9 ,\result_reg_reg[0]_i_1_n_10 ,\result_reg_reg[0]_i_1_n_11 ,\result_reg_reg[0]_i_1_n_12 ,\result_reg_reg[0]_i_1_n_13 ,\result_reg_reg[0]_i_1_n_14 ,\result_reg_reg[0]_i_1_n_15 }),
        .S({\result_reg[0]_i_10_n_0 ,\result_reg[0]_i_11_n_0 ,\result_reg[0]_i_12_n_0 ,\result_reg[0]_i_13_n_0 ,\result_reg[0]_i_14_n_0 ,\result_reg[0]_i_15_n_0 ,\result_reg[0]_i_16_n_0 ,\result_reg[0]_i_17_n_0 }));
  FDCE \result_reg_reg[10] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_13 ),
        .Q(result_reg_reg[10]));
  FDCE \result_reg_reg[11] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_12 ),
        .Q(result_reg_reg[11]));
  FDCE \result_reg_reg[12] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_11 ),
        .Q(result_reg_reg[12]));
  FDCE \result_reg_reg[13] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_10 ),
        .Q(result_reg_reg[13]));
  FDCE \result_reg_reg[14] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_9 ),
        .Q(result_reg_reg[14]));
  FDCE \result_reg_reg[15] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_8 ),
        .Q(result_reg_reg[15]));
  FDCE \result_reg_reg[16] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_15 ),
        .Q(result_reg_reg[16]));
  CARRY8 \result_reg_reg[16]_i_1 
       (.CI(\result_reg_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_reg_reg[16]_i_1_n_0 ,\result_reg_reg[16]_i_1_n_1 ,\result_reg_reg[16]_i_1_n_2 ,\result_reg_reg[16]_i_1_n_3 ,\result_reg_reg[16]_i_1_n_4 ,\result_reg_reg[16]_i_1_n_5 ,\result_reg_reg[16]_i_1_n_6 ,\result_reg_reg[16]_i_1_n_7 }),
        .DI({\result_reg[16]_i_2_n_0 ,\result_reg[16]_i_3_n_0 ,\result_reg[16]_i_4_n_0 ,\result_reg[16]_i_5_n_0 ,\result_reg[16]_i_6_n_0 ,\result_reg[16]_i_7_n_0 ,\result_reg[16]_i_8_n_0 ,\result_reg[16]_i_9_n_0 }),
        .O({\result_reg_reg[16]_i_1_n_8 ,\result_reg_reg[16]_i_1_n_9 ,\result_reg_reg[16]_i_1_n_10 ,\result_reg_reg[16]_i_1_n_11 ,\result_reg_reg[16]_i_1_n_12 ,\result_reg_reg[16]_i_1_n_13 ,\result_reg_reg[16]_i_1_n_14 ,\result_reg_reg[16]_i_1_n_15 }),
        .S({\result_reg[16]_i_10_n_0 ,\result_reg[16]_i_11_n_0 ,\result_reg[16]_i_12_n_0 ,\result_reg[16]_i_13_n_0 ,\result_reg[16]_i_14_n_0 ,\result_reg[16]_i_15_n_0 ,\result_reg[16]_i_16_n_0 ,\result_reg[16]_i_17_n_0 }));
  FDCE \result_reg_reg[17] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_14 ),
        .Q(result_reg_reg[17]));
  FDCE \result_reg_reg[18] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_13 ),
        .Q(result_reg_reg[18]));
  FDCE \result_reg_reg[19] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_12 ),
        .Q(result_reg_reg[19]));
  FDCE \result_reg_reg[1] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_14 ),
        .Q(result_reg_reg[1]));
  FDCE \result_reg_reg[20] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_11 ),
        .Q(result_reg_reg[20]));
  FDCE \result_reg_reg[21] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_10 ),
        .Q(result_reg_reg[21]));
  FDCE \result_reg_reg[22] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_9 ),
        .Q(result_reg_reg[22]));
  FDCE \result_reg_reg[23] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_8 ),
        .Q(result_reg_reg[23]));
  FDCE \result_reg_reg[24] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_15 ),
        .Q(result_reg_reg[24]));
  CARRY8 \result_reg_reg[24]_i_1 
       (.CI(\result_reg_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_result_reg_reg[24]_i_1_CO_UNCONNECTED [7],\result_reg_reg[24]_i_1_n_1 ,\result_reg_reg[24]_i_1_n_2 ,\result_reg_reg[24]_i_1_n_3 ,\result_reg_reg[24]_i_1_n_4 ,\result_reg_reg[24]_i_1_n_5 ,\result_reg_reg[24]_i_1_n_6 ,\result_reg_reg[24]_i_1_n_7 }),
        .DI({1'b0,\result_reg[24]_i_2_n_0 ,\result_reg[24]_i_3_n_0 ,\result_reg[24]_i_4_n_0 ,\result_reg[24]_i_5_n_0 ,\result_reg[24]_i_6_n_0 ,\result_reg[24]_i_7_n_0 ,\result_reg[24]_i_8_n_0 }),
        .O({\result_reg_reg[24]_i_1_n_8 ,\result_reg_reg[24]_i_1_n_9 ,\result_reg_reg[24]_i_1_n_10 ,\result_reg_reg[24]_i_1_n_11 ,\result_reg_reg[24]_i_1_n_12 ,\result_reg_reg[24]_i_1_n_13 ,\result_reg_reg[24]_i_1_n_14 ,\result_reg_reg[24]_i_1_n_15 }),
        .S({\result_reg[24]_i_9_n_0 ,\result_reg[24]_i_10_n_0 ,\result_reg[24]_i_11_n_0 ,\result_reg[24]_i_12_n_0 ,\result_reg[24]_i_13_n_0 ,\result_reg[24]_i_14_n_0 ,\result_reg[24]_i_15_n_0 ,\result_reg[24]_i_16_n_0 }));
  FDCE \result_reg_reg[25] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_14 ),
        .Q(result_reg_reg[25]));
  FDCE \result_reg_reg[26] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_13 ),
        .Q(result_reg_reg[26]));
  FDCE \result_reg_reg[27] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_12 ),
        .Q(result_reg_reg[27]));
  FDCE \result_reg_reg[28] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_11 ),
        .Q(result_reg_reg[28]));
  FDCE \result_reg_reg[29] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_10 ),
        .Q(result_reg_reg[29]));
  FDCE \result_reg_reg[2] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_13 ),
        .Q(result_reg_reg[2]));
  FDCE \result_reg_reg[30] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_9 ),
        .Q(result_reg_reg[30]));
  FDCE \result_reg_reg[31] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_8 ),
        .Q(result_reg_reg[31]));
  FDCE \result_reg_reg[3] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_12 ),
        .Q(result_reg_reg[3]));
  FDCE \result_reg_reg[4] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_11 ),
        .Q(result_reg_reg[4]));
  FDCE \result_reg_reg[5] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_10 ),
        .Q(result_reg_reg[5]));
  FDCE \result_reg_reg[6] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_9 ),
        .Q(result_reg_reg[6]));
  FDCE \result_reg_reg[7] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_8 ),
        .Q(result_reg_reg[7]));
  FDCE \result_reg_reg[8] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_15 ),
        .Q(result_reg_reg[8]));
  CARRY8 \result_reg_reg[8]_i_1 
       (.CI(\result_reg_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_reg_reg[8]_i_1_n_0 ,\result_reg_reg[8]_i_1_n_1 ,\result_reg_reg[8]_i_1_n_2 ,\result_reg_reg[8]_i_1_n_3 ,\result_reg_reg[8]_i_1_n_4 ,\result_reg_reg[8]_i_1_n_5 ,\result_reg_reg[8]_i_1_n_6 ,\result_reg_reg[8]_i_1_n_7 }),
        .DI({\result_reg[8]_i_2_n_0 ,\result_reg[8]_i_3_n_0 ,\result_reg[8]_i_4_n_0 ,\result_reg[8]_i_5_n_0 ,\result_reg[8]_i_6_n_0 ,\result_reg[8]_i_7_n_0 ,\result_reg[8]_i_8_n_0 ,\result_reg[8]_i_9_n_0 }),
        .O({\result_reg_reg[8]_i_1_n_8 ,\result_reg_reg[8]_i_1_n_9 ,\result_reg_reg[8]_i_1_n_10 ,\result_reg_reg[8]_i_1_n_11 ,\result_reg_reg[8]_i_1_n_12 ,\result_reg_reg[8]_i_1_n_13 ,\result_reg_reg[8]_i_1_n_14 ,\result_reg_reg[8]_i_1_n_15 }),
        .S({\result_reg[8]_i_10_n_0 ,\result_reg[8]_i_11_n_0 ,\result_reg[8]_i_12_n_0 ,\result_reg[8]_i_13_n_0 ,\result_reg[8]_i_14_n_0 ,\result_reg[8]_i_15_n_0 ,\result_reg[8]_i_16_n_0 ,\result_reg[8]_i_17_n_0 }));
  FDCE \result_reg_reg[9] 
       (.C(clk_200MHz),
        .CE(out_valid_i_1_n_0),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_14 ),
        .Q(result_reg_reg[9]));
  FDCE valid_stage1_reg
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(mac_in_valid_reg),
        .Q(valid_stage1));
endmodule

(* ORIG_REF_NAME = "top_stream_acc" *) 
module ps_pl_system_top_system_level_0_3_top_stream_acc
   (sys_rst_n_0,
    rx_af_full,
    s_axis_tready,
    m_axis_tvalid,
    D,
    \result_reg_reg[31]_0 ,
    rd_data,
    clk_200MHz,
    Q,
    clk_100MHz,
    reg1_wr_pulse,
    s_axis_tvalid,
    \track_mem_reg[0][1]_0 ,
    s_axis_tlast,
    m_axis_tready,
    sys_rst_n,
    \result_reg_reg[31]_1 ,
    s_axi_araddr,
    \rdata_reg[1] );
  output sys_rst_n_0;
  output rx_af_full;
  output s_axis_tready;
  output m_axis_tvalid;
  output [1:0]D;
  output [29:0]\result_reg_reg[31]_0 ;
  output [32:0]rd_data;
  input clk_200MHz;
  input [16:0]Q;
  input clk_100MHz;
  input reg1_wr_pulse;
  input s_axis_tvalid;
  input [31:0]\track_mem_reg[0][1]_0 ;
  input s_axis_tlast;
  input m_axis_tready;
  input sys_rst_n;
  input \result_reg_reg[31]_1 ;
  input [1:0]s_axi_araddr;
  input [1:0]\rdata_reg[1] ;

  wire [1:0]D;
  wire \FSM_onehot_curr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire [16:0]Q;
  wire clk_100MHz;
  wire clk_200MHz;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mac_in_valid_reg;
  wire mac_out_valid;
  wire [3:1]p_0_in;
  wire [3:0]p_0_in__0;
  wire [1:0]p_1_in;
  wire [32:0]rd_data;
  wire [1:0]\rdata_reg[1] ;
  wire reg1_wr_pulse;
  wire [1:0]reg2_status;
  wire [1:0]result_reg;
  wire result_reg_0;
  wire [31:0]result_reg_reg;
  wire [29:0]\result_reg_reg[31]_0 ;
  wire \result_reg_reg[31]_1 ;
  wire rx_af_empty;
  wire rx_af_full;
  wire rx_af_rd_en_reg0;
  wire rx_cdc_fifo_n_10;
  wire rx_cdc_fifo_n_11;
  wire rx_cdc_fifo_n_12;
  wire rx_cdc_fifo_n_13;
  wire rx_cdc_fifo_n_14;
  wire rx_cdc_fifo_n_15;
  wire rx_cdc_fifo_n_16;
  wire rx_cdc_fifo_n_17;
  wire rx_cdc_fifo_n_18;
  wire rx_cdc_fifo_n_19;
  wire rx_cdc_fifo_n_20;
  wire rx_cdc_fifo_n_5;
  wire rx_cdc_fifo_n_6;
  wire rx_cdc_fifo_n_7;
  wire rx_cdc_fifo_n_8;
  wire rx_cdc_fifo_n_9;
  wire [1:0]s_axi_araddr;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire \track_mem[0][1]_i_1_n_0 ;
  wire \track_mem[10][1]_i_1_n_0 ;
  wire \track_mem[11][1]_i_1_n_0 ;
  wire \track_mem[12][1]_i_1_n_0 ;
  wire \track_mem[13][1]_i_1_n_0 ;
  wire \track_mem[14][1]_i_1_n_0 ;
  wire \track_mem[15][1]_i_1_n_0 ;
  wire \track_mem[1][1]_i_1_n_0 ;
  wire \track_mem[2][1]_i_1_n_0 ;
  wire \track_mem[3][1]_i_1_n_0 ;
  wire \track_mem[4][1]_i_1_n_0 ;
  wire \track_mem[5][1]_i_1_n_0 ;
  wire \track_mem[6][1]_i_1_n_0 ;
  wire \track_mem[7][1]_i_1_n_0 ;
  wire \track_mem[8][1]_i_1_n_0 ;
  wire \track_mem[9][1]_i_1_n_0 ;
  wire [1:0]\track_mem_reg[0] ;
  wire [31:0]\track_mem_reg[0][1]_0 ;
  wire [1:0]\track_mem_reg[10] ;
  wire [1:0]\track_mem_reg[11] ;
  wire [1:0]\track_mem_reg[12] ;
  wire [1:0]\track_mem_reg[13] ;
  wire [1:0]\track_mem_reg[14] ;
  wire [1:0]\track_mem_reg[15] ;
  wire [1:0]\track_mem_reg[1] ;
  wire [1:0]\track_mem_reg[2] ;
  wire [1:0]\track_mem_reg[3] ;
  wire [1:0]\track_mem_reg[4] ;
  wire [1:0]\track_mem_reg[5] ;
  wire [1:0]\track_mem_reg[6] ;
  wire [1:0]\track_mem_reg[7] ;
  wire [1:0]\track_mem_reg[8] ;
  wire [1:0]\track_mem_reg[9] ;
  wire [3:0]track_rd_ptr_reg;
  wire \track_wr_ptr[0]_i_1_n_0 ;
  wire [3:0]track_wr_ptr_reg;
  wire tx_af_rd_en_reg_reg_n_0;
  wire tx_cdc_fifo_n_34;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_curr_state[1]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(reg2_status[1]),
        .O(\FSM_onehot_curr_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_curr_state[2]_i_2 
       (.I0(sys_rst_n),
        .O(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "IDLE_ST:001,PROC_ST:010,DONE_ST:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(clk_100MHz),
        .CE(tx_cdc_fifo_n_34),
        .D(1'b0),
        .PRE(sys_rst_n_0),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE_ST:001,PROC_ST:010,DONE_ST:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clk_100MHz),
        .CE(tx_cdc_fifo_n_34),
        .CLR(sys_rst_n_0),
        .D(\FSM_onehot_curr_state[1]_i_1_n_0 ),
        .Q(reg2_status[0]));
  (* FSM_ENCODED_STATES = "IDLE_ST:001,PROC_ST:010,DONE_ST:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clk_100MHz),
        .CE(tx_cdc_fifo_n_34),
        .CLR(sys_rst_n_0),
        .D(reg2_status[0]),
        .Q(reg2_status[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[0]_i_1 
       (.I0(reg2_status[0]),
        .I1(result_reg[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(Q[0]),
        .I5(\rdata_reg[1] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[1]_i_1 
       (.I0(reg2_status[1]),
        .I1(result_reg[1]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(Q[1]),
        .I5(\rdata_reg[1] [1]),
        .O(D[1]));
  FDCE \result_reg_reg[0] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[0]),
        .Q(result_reg[0]));
  FDCE \result_reg_reg[10] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[10]),
        .Q(\result_reg_reg[31]_0 [8]));
  FDCE \result_reg_reg[11] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[11]),
        .Q(\result_reg_reg[31]_0 [9]));
  FDCE \result_reg_reg[12] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[12]),
        .Q(\result_reg_reg[31]_0 [10]));
  FDCE \result_reg_reg[13] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[13]),
        .Q(\result_reg_reg[31]_0 [11]));
  FDCE \result_reg_reg[14] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[14]),
        .Q(\result_reg_reg[31]_0 [12]));
  FDCE \result_reg_reg[15] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[15]),
        .Q(\result_reg_reg[31]_0 [13]));
  FDCE \result_reg_reg[16] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[16]),
        .Q(\result_reg_reg[31]_0 [14]));
  FDCE \result_reg_reg[17] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[17]),
        .Q(\result_reg_reg[31]_0 [15]));
  FDCE \result_reg_reg[18] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[18]),
        .Q(\result_reg_reg[31]_0 [16]));
  FDCE \result_reg_reg[19] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[19]),
        .Q(\result_reg_reg[31]_0 [17]));
  FDCE \result_reg_reg[1] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[1]),
        .Q(result_reg[1]));
  FDCE \result_reg_reg[20] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[20]),
        .Q(\result_reg_reg[31]_0 [18]));
  FDCE \result_reg_reg[21] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[21]),
        .Q(\result_reg_reg[31]_0 [19]));
  FDCE \result_reg_reg[22] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[22]),
        .Q(\result_reg_reg[31]_0 [20]));
  FDCE \result_reg_reg[23] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[23]),
        .Q(\result_reg_reg[31]_0 [21]));
  FDCE \result_reg_reg[24] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[24]),
        .Q(\result_reg_reg[31]_0 [22]));
  FDCE \result_reg_reg[25] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[25]),
        .Q(\result_reg_reg[31]_0 [23]));
  FDCE \result_reg_reg[26] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[26]),
        .Q(\result_reg_reg[31]_0 [24]));
  FDCE \result_reg_reg[27] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[27]),
        .Q(\result_reg_reg[31]_0 [25]));
  FDCE \result_reg_reg[28] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[28]),
        .Q(\result_reg_reg[31]_0 [26]));
  FDCE \result_reg_reg[29] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[29]),
        .Q(\result_reg_reg[31]_0 [27]));
  FDCE \result_reg_reg[2] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[2]),
        .Q(\result_reg_reg[31]_0 [0]));
  FDCE \result_reg_reg[30] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[30]),
        .Q(\result_reg_reg[31]_0 [28]));
  FDCE \result_reg_reg[31] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[31]),
        .Q(\result_reg_reg[31]_0 [29]));
  FDCE \result_reg_reg[3] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[3]),
        .Q(\result_reg_reg[31]_0 [1]));
  FDCE \result_reg_reg[4] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[4]),
        .Q(\result_reg_reg[31]_0 [2]));
  FDCE \result_reg_reg[5] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[5]),
        .Q(\result_reg_reg[31]_0 [3]));
  FDCE \result_reg_reg[6] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[6]),
        .Q(\result_reg_reg[31]_0 [4]));
  FDCE \result_reg_reg[7] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[7]),
        .Q(\result_reg_reg[31]_0 [5]));
  FDCE \result_reg_reg[8] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[8]),
        .Q(\result_reg_reg[31]_0 [6]));
  FDCE \result_reg_reg[9] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data[9]),
        .Q(\result_reg_reg[31]_0 [7]));
  FDCE rx_af_rd_en_reg_reg
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(rx_af_rd_en_reg0),
        .Q(mac_in_valid_reg));
  ps_pl_system_top_system_level_0_3_async_fifo rx_cdc_fifo
       (.clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
        .mac_in_valid_reg(mac_in_valid_reg),
        .\rd_bin_ptr_reg[2]_0 (sys_rst_n_0),
        .rd_data({p_1_in,rx_cdc_fifo_n_5,rx_cdc_fifo_n_6,rx_cdc_fifo_n_7,rx_cdc_fifo_n_8,rx_cdc_fifo_n_9,rx_cdc_fifo_n_10,rx_cdc_fifo_n_11,rx_cdc_fifo_n_12,rx_cdc_fifo_n_13,rx_cdc_fifo_n_14,rx_cdc_fifo_n_15,rx_cdc_fifo_n_16,rx_cdc_fifo_n_17,rx_cdc_fifo_n_18,rx_cdc_fifo_n_19,rx_cdc_fifo_n_20}),
        .\rd_gray_sync2_reg[1]_0 (rx_af_full),
        .reg1_wr_pulse(reg1_wr_pulse),
        .rx_af_empty(rx_af_empty),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .\track_mem_reg[0][1] (\track_mem_reg[0][1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \track_mem[0][1]_i_1 
       (.I0(mac_in_valid_reg),
        .I1(sys_rst_n),
        .I2(track_wr_ptr_reg[1]),
        .I3(track_wr_ptr_reg[0]),
        .I4(track_wr_ptr_reg[3]),
        .I5(track_wr_ptr_reg[2]),
        .O(\track_mem[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \track_mem[10][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \track_mem[11][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \track_mem[12][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[12][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \track_mem[13][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[1]),
        .I5(track_wr_ptr_reg[0]),
        .O(\track_mem[13][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \track_mem[14][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[14][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \track_mem[15][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[15][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \track_mem[1][1]_i_1 
       (.I0(mac_in_valid_reg),
        .I1(sys_rst_n),
        .I2(track_wr_ptr_reg[0]),
        .I3(track_wr_ptr_reg[1]),
        .I4(track_wr_ptr_reg[3]),
        .I5(track_wr_ptr_reg[2]),
        .O(\track_mem[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \track_mem[2][1]_i_1 
       (.I0(mac_in_valid_reg),
        .I1(sys_rst_n),
        .I2(track_wr_ptr_reg[1]),
        .I3(track_wr_ptr_reg[0]),
        .I4(track_wr_ptr_reg[3]),
        .I5(track_wr_ptr_reg[2]),
        .O(\track_mem[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \track_mem[3][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(track_wr_ptr_reg[1]),
        .I2(track_wr_ptr_reg[0]),
        .I3(track_wr_ptr_reg[2]),
        .I4(mac_in_valid_reg),
        .I5(sys_rst_n),
        .O(\track_mem[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \track_mem[4][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \track_mem[5][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[1]),
        .I5(track_wr_ptr_reg[0]),
        .O(\track_mem[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \track_mem[6][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \track_mem[7][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \track_mem[8][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[0]),
        .I5(track_wr_ptr_reg[1]),
        .O(\track_mem[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \track_mem[9][1]_i_1 
       (.I0(track_wr_ptr_reg[3]),
        .I1(sys_rst_n),
        .I2(mac_in_valid_reg),
        .I3(track_wr_ptr_reg[2]),
        .I4(track_wr_ptr_reg[1]),
        .I5(track_wr_ptr_reg[0]),
        .O(\track_mem[9][1]_i_1_n_0 ));
  FDRE \track_mem_reg[0][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[0][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[0] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[0][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[0][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[0] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[10][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[10][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[10] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[10][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[10][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[10] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[11][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[11][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[11] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[11][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[11][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[11] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[12][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[12][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[12] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[12][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[12][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[12] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[13][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[13][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[13] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[13][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[13][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[13] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[14][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[14][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[14] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[14][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[14][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[14] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[15][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[15][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[15] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[15][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[15][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[15] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[1][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[1][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[1] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[1][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[1][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[1] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[2][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[2][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[2] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[2][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[2][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[2] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[3][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[3][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[3] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[3][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[3][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[3] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[4][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[4][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[4] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[4][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[4][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[4] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[5][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[5][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[5] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[5][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[5][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[5] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[6][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[6][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[6] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[6][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[6][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[6] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[7][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[7][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[7] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[7][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[7][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[7] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[8][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[8][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[8] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[8][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[8][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[8] [1]),
        .R(1'b0));
  FDRE \track_mem_reg[9][0] 
       (.C(clk_200MHz),
        .CE(\track_mem[9][1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\track_mem_reg[9] [0]),
        .R(1'b0));
  FDRE \track_mem_reg[9][1] 
       (.C(clk_200MHz),
        .CE(\track_mem[9][1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\track_mem_reg[9] [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \track_rd_ptr[0]_i_1 
       (.I0(track_rd_ptr_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \track_rd_ptr[1]_i_1 
       (.I0(track_rd_ptr_reg[1]),
        .I1(track_rd_ptr_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \track_rd_ptr[2]_i_1 
       (.I0(track_rd_ptr_reg[0]),
        .I1(track_rd_ptr_reg[1]),
        .I2(track_rd_ptr_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \track_rd_ptr[3]_i_1 
       (.I0(track_rd_ptr_reg[1]),
        .I1(track_rd_ptr_reg[0]),
        .I2(track_rd_ptr_reg[2]),
        .I3(track_rd_ptr_reg[3]),
        .O(p_0_in__0[3]));
  FDCE \track_rd_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(mac_out_valid),
        .CLR(sys_rst_n_0),
        .D(p_0_in__0[0]),
        .Q(track_rd_ptr_reg[0]));
  FDCE \track_rd_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(mac_out_valid),
        .CLR(sys_rst_n_0),
        .D(p_0_in__0[1]),
        .Q(track_rd_ptr_reg[1]));
  FDCE \track_rd_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(mac_out_valid),
        .CLR(sys_rst_n_0),
        .D(p_0_in__0[2]),
        .Q(track_rd_ptr_reg[2]));
  FDCE \track_rd_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(mac_out_valid),
        .CLR(sys_rst_n_0),
        .D(p_0_in__0[3]),
        .Q(track_rd_ptr_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \track_wr_ptr[0]_i_1 
       (.I0(track_wr_ptr_reg[0]),
        .O(\track_wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \track_wr_ptr[1]_i_1 
       (.I0(track_wr_ptr_reg[1]),
        .I1(track_wr_ptr_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \track_wr_ptr[2]_i_1 
       (.I0(track_wr_ptr_reg[2]),
        .I1(track_wr_ptr_reg[0]),
        .I2(track_wr_ptr_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \track_wr_ptr[3]_i_1 
       (.I0(track_wr_ptr_reg[1]),
        .I1(track_wr_ptr_reg[0]),
        .I2(track_wr_ptr_reg[2]),
        .I3(track_wr_ptr_reg[3]),
        .O(p_0_in[3]));
  FDCE \track_wr_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(mac_in_valid_reg),
        .CLR(sys_rst_n_0),
        .D(\track_wr_ptr[0]_i_1_n_0 ),
        .Q(track_wr_ptr_reg[0]));
  FDCE \track_wr_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(mac_in_valid_reg),
        .CLR(sys_rst_n_0),
        .D(p_0_in[1]),
        .Q(track_wr_ptr_reg[1]));
  FDCE \track_wr_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(mac_in_valid_reg),
        .CLR(sys_rst_n_0),
        .D(p_0_in[2]),
        .Q(track_wr_ptr_reg[2]));
  FDCE \track_wr_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(mac_in_valid_reg),
        .CLR(sys_rst_n_0),
        .D(p_0_in[3]),
        .Q(track_wr_ptr_reg[3]));
  FDCE tx_af_rd_en_reg_reg
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(result_reg_0),
        .Q(tx_af_rd_en_reg_reg_n_0));
  ps_pl_system_top_system_level_0_3_async_fifo_0 tx_cdc_fifo
       (.E(tx_cdc_fifo_n_34),
        .\FSM_onehot_curr_state_reg[1] (result_reg_0),
        .Q({reg2_status,\FSM_onehot_curr_state_reg_n_0_[0] }),
        .clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .mac_in_valid_reg(mac_in_valid_reg),
        .mem_reg_0_15_28_33_i_2__0_0(\track_mem_reg[1] ),
        .mem_reg_0_15_28_33_i_2__0_1(\track_mem_reg[3] ),
        .mem_reg_0_15_28_33_i_2__0_10(\track_mem_reg[4] ),
        .mem_reg_0_15_28_33_i_2__0_11(\track_mem_reg[6] ),
        .mem_reg_0_15_28_33_i_2__0_12(\track_mem_reg[13] ),
        .mem_reg_0_15_28_33_i_2__0_13(\track_mem_reg[15] ),
        .mem_reg_0_15_28_33_i_2__0_14(\track_mem_reg[12] ),
        .mem_reg_0_15_28_33_i_2__0_15(\track_mem_reg[14] ),
        .mem_reg_0_15_28_33_i_2__0_2(\track_mem_reg[0] ),
        .mem_reg_0_15_28_33_i_2__0_3(\track_mem_reg[2] ),
        .mem_reg_0_15_28_33_i_2__0_4(\track_mem_reg[9] ),
        .mem_reg_0_15_28_33_i_2__0_5(\track_mem_reg[11] ),
        .mem_reg_0_15_28_33_i_2__0_6(\track_mem_reg[8] ),
        .mem_reg_0_15_28_33_i_2__0_7(\track_mem_reg[10] ),
        .mem_reg_0_15_28_33_i_2__0_8(\track_mem_reg[5] ),
        .mem_reg_0_15_28_33_i_2__0_9(\track_mem_reg[7] ),
        .rd_data(rd_data),
        .\rd_gray_ptr_reg[0]_0 (tx_af_rd_en_reg_reg_n_0),
        .reg1_wr_pulse(reg1_wr_pulse),
        .result_reg_reg(result_reg_reg),
        .\result_reg_reg[29] (track_rd_ptr_reg),
        .rx_af_empty(rx_af_empty),
        .rx_af_rd_en_reg0(rx_af_rd_en_reg0),
        .\wr_bin_ptr_reg[3]_0 (sys_rst_n_0),
        .\wr_gray_ptr_reg[4]_0 (mac_out_valid));
  ps_pl_system_top_system_level_0_3_pipelined_mac u_mac
       (.E(mac_out_valid),
        .Q(Q),
        .clk_200MHz(clk_200MHz),
        .mac_in_valid_reg(mac_in_valid_reg),
        .rd_data({rx_cdc_fifo_n_5,rx_cdc_fifo_n_6,rx_cdc_fifo_n_7,rx_cdc_fifo_n_8,rx_cdc_fifo_n_9,rx_cdc_fifo_n_10,rx_cdc_fifo_n_11,rx_cdc_fifo_n_12,rx_cdc_fifo_n_13,rx_cdc_fifo_n_14,rx_cdc_fifo_n_15,rx_cdc_fifo_n_16,rx_cdc_fifo_n_17,rx_cdc_fifo_n_18,rx_cdc_fifo_n_19,rx_cdc_fifo_n_20}),
        .result_reg_reg(result_reg_reg),
        .\result_reg_reg[0]_0 (sys_rst_n_0),
        .\result_reg_reg[31]_0 (\result_reg_reg[31]_1 ));
endmodule

(* ORIG_REF_NAME = "top_system_level" *) 
module ps_pl_system_top_system_level_0_3_top_system_level
   (clk_100MHz,
    clk_200MHz,
    sys_rst_n,
    rxd,
    txd,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  input clk_100MHz;
  input clk_200MHz;
  input sys_rst_n;
  input rxd;
  output txd;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [3:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire accelerator_inst_n_0;
  wire accelerator_inst_n_4;
  wire accelerator_inst_n_5;
  wire axi_slave_inst_n_40;
  wire axi_slave_inst_n_41;
  wire axi_slave_inst_n_42;
  wire axi_slave_inst_n_43;
  wire axi_slave_inst_n_44;
  wire axi_slave_inst_n_45;
  wire axi_slave_inst_n_46;
  wire axi_slave_inst_n_47;
  wire axi_slave_inst_n_48;
  wire axi_slave_inst_n_49;
  wire axi_slave_inst_n_50;
  wire axi_slave_inst_n_51;
  wire axi_slave_inst_n_52;
  wire axi_slave_inst_n_53;
  wire axi_slave_inst_n_54;
  wire axi_slave_inst_n_55;
  wire clk_100MHz;
  wire clk_200MHz;
  wire in_clr;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [1:0]reg1;
  wire reg1_wr_pulse;
  wire [31:2]result_reg;
  wire \result_reg_reg[0]_i_18_n_0 ;
  wire rx_af_full;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire sys_rst_n;
  wire [31:0]wr_data;

  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign txd = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ps_pl_system_top_system_level_0_3_top_stream_acc accelerator_inst
       (.D({accelerator_inst_n_4,accelerator_inst_n_5}),
        .Q({in_clr,axi_slave_inst_n_40,axi_slave_inst_n_41,axi_slave_inst_n_42,axi_slave_inst_n_43,axi_slave_inst_n_44,axi_slave_inst_n_45,axi_slave_inst_n_46,axi_slave_inst_n_47,axi_slave_inst_n_48,axi_slave_inst_n_49,axi_slave_inst_n_50,axi_slave_inst_n_51,axi_slave_inst_n_52,axi_slave_inst_n_53,axi_slave_inst_n_54,axi_slave_inst_n_55}),
        .clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rd_data({m_axis_tlast,m_axis_tdata}),
        .\rdata_reg[1] (reg1),
        .reg1_wr_pulse(reg1_wr_pulse),
        .\result_reg_reg[31]_0 (result_reg),
        .\result_reg_reg[31]_1 (\result_reg_reg[0]_i_18_n_0 ),
        .rx_af_full(rx_af_full),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(accelerator_inst_n_0),
        .\track_mem_reg[0][1]_0 (wr_data));
  ps_pl_system_top_system_level_0_3_axi4_lite_slave axi_slave_inst
       (.D({accelerator_inst_n_4,accelerator_inst_n_5}),
        .Q(reg1),
        .arready_reg_0(s_axi_arready),
        .awready_reg_0(s_axi_awready),
        .\rdata_reg[31]_0 (result_reg),
        .\reg0_reg[31]_0 ({in_clr,axi_slave_inst_n_40,axi_slave_inst_n_41,axi_slave_inst_n_42,axi_slave_inst_n_43,axi_slave_inst_n_44,axi_slave_inst_n_45,axi_slave_inst_n_46,axi_slave_inst_n_47,axi_slave_inst_n_48,axi_slave_inst_n_49,axi_slave_inst_n_50,axi_slave_inst_n_51,axi_slave_inst_n_52,axi_slave_inst_n_53,axi_slave_inst_n_54,axi_slave_inst_n_55}),
        .reg1_wr_pulse(reg1_wr_pulse),
        .rx_af_full(rx_af_full),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .\s_axis_tdata[31] (wr_data),
        .s_axis_tvalid(s_axis_tvalid));
  FDCE \result_reg_reg[0]_i_18 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(accelerator_inst_n_0),
        .D(1'b1),
        .Q(\result_reg_reg[0]_i_18_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
