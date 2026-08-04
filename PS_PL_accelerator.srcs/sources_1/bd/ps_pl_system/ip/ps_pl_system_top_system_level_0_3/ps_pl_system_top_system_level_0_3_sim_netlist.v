// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Aug  3 22:36:15 2026
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
    s_axi_rready);
  input clk_100MHz;
  input clk_200MHz;
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

  wire clk_100MHz;
  wire clk_200MHz;
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
  wire sys_rst_n;
  wire txd;

  ps_pl_system_top_system_level_0_3_top_system_level inst
       (.clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
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
        .sys_rst_n(sys_rst_n),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module ps_pl_system_top_system_level_0_3_async_fifo
   (rx_af_rd_en_reg0,
    rd_data,
    clk_100MHz,
    \wr_bin_ptr_reg[3]_0 ,
    clk_200MHz,
    reg1_valid_strobe,
    mac_in_valid_reg,
    DSP_A_B_DATA_INST);
  output rx_af_rd_en_reg0;
  output [15:0]rd_data;
  input clk_100MHz;
  input \wr_bin_ptr_reg[3]_0 ;
  input clk_200MHz;
  input reg1_valid_strobe;
  input mac_in_valid_reg;
  input [15:0]DSP_A_B_DATA_INST;

  wire [15:0]DSP_A_B_DATA_INST;
  wire clk_100MHz;
  wire clk_200MHz;
  wire mac_in_valid_reg;
  wire mem_reg_0_15_0_13_i_1_n_0;
  wire mem_reg_0_15_0_13_i_2_n_0;
  wire [4:0]rd_bin_next;
  wire [3:0]rd_bin_ptr_reg;
  wire [15:0]rd_data;
  wire [3:0]rd_gray_next;
  wire [4:0]rd_gray_ptr;
  wire \rd_gray_ptr[3]_i_2__0_n_0 ;
  wire [4:0]rd_gray_sync1;
  wire [4:0]rd_gray_sync2;
  wire reg1_valid_strobe;
  wire rx_af_rd_en_reg0;
  wire rx_af_rd_en_reg_i_2_n_0;
  wire [4:4]wr_bin_next;
  wire [3:0]wr_bin_next__0;
  wire \wr_bin_ptr_reg[3]_0 ;
  wire \wr_bin_ptr_reg_n_0_[0] ;
  wire \wr_bin_ptr_reg_n_0_[1] ;
  wire \wr_bin_ptr_reg_n_0_[2] ;
  wire \wr_bin_ptr_reg_n_0_[3] ;
  wire [3:0]wr_gray_next;
  wire [4:0]wr_gray_ptr;
  wire \wr_gray_ptr[3]_i_2_n_0 ;
  wire [4:0]wr_gray_sync1;
  wire [4:0]wr_gray_sync2;
  wire [1:0]NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_15_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_15_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_15_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_15_DOE_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_15_DOF_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_15_DOG_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_14_15_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
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
        .DIA(DSP_A_B_DATA_INST[1:0]),
        .DIB(DSP_A_B_DATA_INST[3:2]),
        .DIC(DSP_A_B_DATA_INST[5:4]),
        .DID(DSP_A_B_DATA_INST[7:6]),
        .DIE(DSP_A_B_DATA_INST[9:8]),
        .DIF(DSP_A_B_DATA_INST[11:10]),
        .DIG(DSP_A_B_DATA_INST[13:12]),
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
        .WE(mem_reg_0_15_0_13_i_1_n_0));
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    mem_reg_0_15_0_13_i_1
       (.I0(reg1_valid_strobe),
        .I1(wr_gray_ptr[0]),
        .I2(rd_gray_sync2[0]),
        .I3(wr_gray_ptr[1]),
        .I4(rd_gray_sync2[1]),
        .I5(mem_reg_0_15_0_13_i_2_n_0),
        .O(mem_reg_0_15_0_13_i_1_n_0));
  LUT6 #(
    .INIT(64'h0660000000000660)) 
    mem_reg_0_15_0_13_i_2
       (.I0(wr_gray_ptr[4]),
        .I1(rd_gray_sync2[4]),
        .I2(wr_gray_ptr[3]),
        .I3(rd_gray_sync2[3]),
        .I4(wr_gray_ptr[2]),
        .I5(rd_gray_sync2[2]),
        .O(mem_reg_0_15_0_13_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "accelerator_inst/rx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32M16 mem_reg_0_15_14_15
       (.ADDRA({1'b0,rd_bin_ptr_reg}),
        .ADDRB({1'b0,rd_bin_ptr_reg}),
        .ADDRC({1'b0,rd_bin_ptr_reg}),
        .ADDRD({1'b0,rd_bin_ptr_reg}),
        .ADDRE({1'b0,rd_bin_ptr_reg}),
        .ADDRF({1'b0,rd_bin_ptr_reg}),
        .ADDRG({1'b0,rd_bin_ptr_reg}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(DSP_A_B_DATA_INST[15:14]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(rd_data[15:14]),
        .DOB(NLW_mem_reg_0_15_14_15_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_mem_reg_0_15_14_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_15_14_15_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_mem_reg_0_15_14_15_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_mem_reg_0_15_14_15_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_mem_reg_0_15_14_15_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_mem_reg_0_15_14_15_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_100MHz),
        .WE(mem_reg_0_15_0_13_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \rd_bin_ptr[0]_i_1__0 
       (.I0(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .I1(rd_bin_ptr_reg[0]),
        .O(rd_bin_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \rd_bin_ptr[1]_i_1__0 
       (.I0(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .I1(rd_bin_ptr_reg[0]),
        .I2(rd_bin_ptr_reg[1]),
        .O(rd_bin_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \rd_bin_ptr[2]_i_1__0 
       (.I0(rd_bin_ptr_reg[0]),
        .I1(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .I2(rd_bin_ptr_reg[1]),
        .I3(rd_bin_ptr_reg[2]),
        .O(rd_bin_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \rd_bin_ptr[3]_i_1__0 
       (.I0(rd_bin_ptr_reg[1]),
        .I1(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .I2(rd_bin_ptr_reg[0]),
        .I3(rd_bin_ptr_reg[2]),
        .I4(rd_bin_ptr_reg[3]),
        .O(rd_bin_next[3]));
  FDCE \rd_bin_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[0]),
        .Q(rd_bin_ptr_reg[0]));
  FDCE \rd_bin_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[1]),
        .Q(rd_bin_ptr_reg[1]));
  FDCE \rd_bin_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[2]),
        .Q(rd_bin_ptr_reg[2]));
  FDCE \rd_bin_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[3]),
        .Q(rd_bin_ptr_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \rd_gray_ptr[0]_i_1__0 
       (.I0(rd_bin_ptr_reg[1]),
        .I1(rd_bin_ptr_reg[0]),
        .I2(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .O(rd_gray_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6656)) 
    \rd_gray_ptr[1]_i_1__0 
       (.I0(rd_bin_ptr_reg[2]),
        .I1(rd_bin_ptr_reg[1]),
        .I2(rd_bin_ptr_reg[0]),
        .I3(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .O(rd_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h66566666)) 
    \rd_gray_ptr[2]_i_1__0 
       (.I0(rd_bin_ptr_reg[3]),
        .I1(rd_bin_ptr_reg[2]),
        .I2(rd_bin_ptr_reg[1]),
        .I3(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .I4(rd_bin_ptr_reg[0]),
        .O(rd_gray_next[2]));
  LUT6 #(
    .INIT(64'h6666566666666666)) 
    \rd_gray_ptr[3]_i_1__0 
       (.I0(rd_gray_ptr[4]),
        .I1(rd_bin_ptr_reg[3]),
        .I2(rd_bin_ptr_reg[2]),
        .I3(rd_bin_ptr_reg[0]),
        .I4(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .I5(rd_bin_ptr_reg[1]),
        .O(rd_gray_next[3]));
  LUT6 #(
    .INIT(64'h90090000FFFFFFFF)) 
    \rd_gray_ptr[3]_i_2__0 
       (.I0(rd_gray_ptr[0]),
        .I1(wr_gray_sync2[0]),
        .I2(rd_gray_ptr[1]),
        .I3(wr_gray_sync2[1]),
        .I4(rx_af_rd_en_reg_i_2_n_0),
        .I5(mac_in_valid_reg),
        .O(\rd_gray_ptr[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \rd_gray_ptr[4]_i_1__0 
       (.I0(rd_bin_ptr_reg[2]),
        .I1(rd_bin_ptr_reg[0]),
        .I2(\rd_gray_ptr[3]_i_2__0_n_0 ),
        .I3(rd_bin_ptr_reg[1]),
        .I4(rd_bin_ptr_reg[3]),
        .I5(rd_gray_ptr[4]),
        .O(rd_bin_next[4]));
  FDCE \rd_gray_ptr_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[0]),
        .Q(rd_gray_ptr[0]));
  FDCE \rd_gray_ptr_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[1]),
        .Q(rd_gray_ptr[1]));
  FDCE \rd_gray_ptr_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[2]),
        .Q(rd_gray_ptr[2]));
  FDCE \rd_gray_ptr_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_next[3]),
        .Q(rd_gray_ptr[3]));
  FDCE \rd_gray_ptr_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[4]),
        .Q(rd_gray_ptr[4]));
  FDCE \rd_gray_sync1_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_ptr[0]),
        .Q(rd_gray_sync1[0]));
  FDCE \rd_gray_sync1_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_ptr[1]),
        .Q(rd_gray_sync1[1]));
  FDCE \rd_gray_sync1_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_ptr[2]),
        .Q(rd_gray_sync1[2]));
  FDCE \rd_gray_sync1_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_ptr[3]),
        .Q(rd_gray_sync1[3]));
  FDCE \rd_gray_sync1_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_ptr[4]),
        .Q(rd_gray_sync1[4]));
  FDCE \rd_gray_sync2_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_sync1[0]),
        .Q(rd_gray_sync2[0]));
  FDCE \rd_gray_sync2_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_sync1[1]),
        .Q(rd_gray_sync2[1]));
  FDCE \rd_gray_sync2_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_sync1[2]),
        .Q(rd_gray_sync2[2]));
  FDCE \rd_gray_sync2_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_sync1[3]),
        .Q(rd_gray_sync2[3]));
  FDCE \rd_gray_sync2_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_gray_sync1[4]),
        .Q(rd_gray_sync2[4]));
  LUT6 #(
    .INIT(64'h000000006FF6FFFF)) 
    rx_af_rd_en_reg_i_1
       (.I0(rd_gray_ptr[0]),
        .I1(wr_gray_sync2[0]),
        .I2(rd_gray_ptr[1]),
        .I3(wr_gray_sync2[1]),
        .I4(rx_af_rd_en_reg_i_2_n_0),
        .I5(mac_in_valid_reg),
        .O(rx_af_rd_en_reg0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_af_rd_en_reg_i_2
       (.I0(wr_gray_sync2[4]),
        .I1(rd_gray_ptr[4]),
        .I2(wr_gray_sync2[3]),
        .I3(rd_gray_ptr[3]),
        .I4(rd_gray_ptr[2]),
        .I5(wr_gray_sync2[2]),
        .O(rx_af_rd_en_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_bin_ptr[0]_i_1 
       (.I0(\wr_gray_ptr[3]_i_2_n_0 ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_bin_next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \wr_bin_ptr[1]_i_1 
       (.I0(\wr_gray_ptr[3]_i_2_n_0 ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_bin_next__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \wr_bin_ptr[2]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[0] ),
        .I1(\wr_gray_ptr[3]_i_2_n_0 ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .I3(\wr_bin_ptr_reg_n_0_[2] ),
        .O(wr_bin_next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \wr_bin_ptr[3]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(\wr_gray_ptr[3]_i_2_n_0 ),
        .I2(\wr_bin_ptr_reg_n_0_[0] ),
        .I3(\wr_bin_ptr_reg_n_0_[2] ),
        .I4(\wr_bin_ptr_reg_n_0_[3] ),
        .O(wr_bin_next__0[3]));
  FDCE \wr_bin_ptr_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[0]),
        .Q(\wr_bin_ptr_reg_n_0_[0] ));
  FDCE \wr_bin_ptr_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[1]),
        .Q(\wr_bin_ptr_reg_n_0_[1] ));
  FDCE \wr_bin_ptr_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[2]),
        .Q(\wr_bin_ptr_reg_n_0_[2] ));
  FDCE \wr_bin_ptr_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next__0[3]),
        .Q(\wr_bin_ptr_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \wr_gray_ptr[0]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(\wr_gray_ptr[3]_i_2_n_0 ),
        .O(wr_gray_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6656)) 
    \wr_gray_ptr[1]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(\wr_bin_ptr_reg_n_0_[1] ),
        .I2(\wr_bin_ptr_reg_n_0_[0] ),
        .I3(\wr_gray_ptr[3]_i_2_n_0 ),
        .O(wr_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66566666)) 
    \wr_gray_ptr[2]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[3] ),
        .I1(\wr_bin_ptr_reg_n_0_[2] ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .I3(\wr_gray_ptr[3]_i_2_n_0 ),
        .I4(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_gray_next[2]));
  LUT6 #(
    .INIT(64'h6666566666666666)) 
    \wr_gray_ptr[3]_i_1 
       (.I0(wr_gray_ptr[4]),
        .I1(\wr_bin_ptr_reg_n_0_[3] ),
        .I2(\wr_bin_ptr_reg_n_0_[2] ),
        .I3(\wr_bin_ptr_reg_n_0_[0] ),
        .I4(\wr_gray_ptr[3]_i_2_n_0 ),
        .I5(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_gray_next[3]));
  LUT6 #(
    .INIT(64'h90090000FFFFFFFF)) 
    \wr_gray_ptr[3]_i_2 
       (.I0(wr_gray_ptr[0]),
        .I1(rd_gray_sync2[0]),
        .I2(wr_gray_ptr[1]),
        .I3(rd_gray_sync2[1]),
        .I4(mem_reg_0_15_0_13_i_2_n_0),
        .I5(reg1_valid_strobe),
        .O(\wr_gray_ptr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \wr_gray_ptr[4]_i_1 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(\wr_gray_ptr[3]_i_2_n_0 ),
        .I3(\wr_bin_ptr_reg_n_0_[1] ),
        .I4(\wr_bin_ptr_reg_n_0_[3] ),
        .I5(wr_gray_ptr[4]),
        .O(wr_bin_next));
  FDCE \wr_gray_ptr_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[0]),
        .Q(wr_gray_ptr[0]));
  FDCE \wr_gray_ptr_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[1]),
        .Q(wr_gray_ptr[1]));
  FDCE \wr_gray_ptr_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[2]),
        .Q(wr_gray_ptr[2]));
  FDCE \wr_gray_ptr_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_next[3]),
        .Q(wr_gray_ptr[3]));
  FDCE \wr_gray_ptr_reg[4] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_bin_next),
        .Q(wr_gray_ptr[4]));
  FDCE \wr_gray_sync1_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_ptr[0]),
        .Q(wr_gray_sync1[0]));
  FDCE \wr_gray_sync1_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_ptr[1]),
        .Q(wr_gray_sync1[1]));
  FDCE \wr_gray_sync1_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_ptr[2]),
        .Q(wr_gray_sync1[2]));
  FDCE \wr_gray_sync1_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_ptr[3]),
        .Q(wr_gray_sync1[3]));
  FDCE \wr_gray_sync1_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_ptr[4]),
        .Q(wr_gray_sync1[4]));
  FDCE \wr_gray_sync2_reg[0] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_sync1[0]),
        .Q(wr_gray_sync2[0]));
  FDCE \wr_gray_sync2_reg[1] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_sync1[1]),
        .Q(wr_gray_sync2[1]));
  FDCE \wr_gray_sync2_reg[2] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_sync1[2]),
        .Q(wr_gray_sync2[2]));
  FDCE \wr_gray_sync2_reg[3] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_sync1[3]),
        .Q(wr_gray_sync2[3]));
  FDCE \wr_gray_sync2_reg[4] 
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(wr_gray_sync1[4]),
        .Q(wr_gray_sync2[4]));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module ps_pl_system_top_system_level_0_3_async_fifo_0
   (D,
    E,
    \FSM_onehot_curr_state_reg[1] ,
    clk_200MHz,
    \wr_bin_ptr_reg[3]_0 ,
    clk_100MHz,
    DIA,
    DIB,
    DIC,
    DID,
    DIE,
    DIF,
    DIG,
    \result_reg_reg[15] ,
    \result_reg_reg[15]_0 ,
    \result_reg_reg[15]_1 ,
    \result_reg_reg[15]_2 ,
    \result_reg_reg[15]_3 ,
    \result_reg_reg[15]_4 ,
    \result_reg_reg[15]_5 ,
    \result_reg_reg[29] ,
    \result_reg_reg[29]_0 ,
    reg1_valid_strobe,
    Q,
    mac_out_valid,
    tx_af_rd_en);
  output [31:0]D;
  output [0:0]E;
  output [0:0]\FSM_onehot_curr_state_reg[1] ;
  input clk_200MHz;
  input \wr_bin_ptr_reg[3]_0 ;
  input clk_100MHz;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input [1:0]DIE;
  input [1:0]DIF;
  input [1:0]DIG;
  input [1:0]\result_reg_reg[15] ;
  input [1:0]\result_reg_reg[15]_0 ;
  input [1:0]\result_reg_reg[15]_1 ;
  input [1:0]\result_reg_reg[15]_2 ;
  input [1:0]\result_reg_reg[15]_3 ;
  input [1:0]\result_reg_reg[15]_4 ;
  input [1:0]\result_reg_reg[15]_5 ;
  input [1:0]\result_reg_reg[29] ;
  input [1:0]\result_reg_reg[29]_0 ;
  input reg1_valid_strobe;
  input [2:0]Q;
  input mac_out_valid;
  input tx_af_rd_en;

  wire [31:0]D;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [1:0]DID;
  wire [1:0]DIE;
  wire [1:0]DIF;
  wire [1:0]DIG;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_curr_state_reg[1] ;
  wire [2:0]Q;
  wire clk_100MHz;
  wire clk_200MHz;
  wire mac_out_valid;
  wire mem_reg_0_15_0_13_i_1__0_n_0;
  wire mem_reg_0_15_0_13_i_2__0_n_0;
  wire [4:0]rd_bin_next;
  wire [3:0]rd_bin_ptr_reg;
  wire [3:0]rd_gray_next;
  wire \rd_gray_ptr[3]_i_2_n_0 ;
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
  wire reg1_valid_strobe;
  wire \result_reg[31]_i_2_n_0 ;
  wire [1:0]\result_reg_reg[15] ;
  wire [1:0]\result_reg_reg[15]_0 ;
  wire [1:0]\result_reg_reg[15]_1 ;
  wire [1:0]\result_reg_reg[15]_2 ;
  wire [1:0]\result_reg_reg[15]_3 ;
  wire [1:0]\result_reg_reg[15]_4 ;
  wire [1:0]\result_reg_reg[15]_5 ;
  wire [1:0]\result_reg_reg[29] ;
  wire [1:0]\result_reg_reg[29]_0 ;
  wire tx_af_rd_en;
  wire [4:4]wr_bin_next;
  wire [3:0]wr_bin_next__0;
  wire \wr_bin_ptr_reg[3]_0 ;
  wire \wr_bin_ptr_reg_n_0_[0] ;
  wire \wr_bin_ptr_reg_n_0_[1] ;
  wire \wr_bin_ptr_reg_n_0_[2] ;
  wire \wr_bin_ptr_reg_n_0_[3] ;
  wire [3:0]wr_gray_next;
  wire \wr_gray_ptr[3]_i_2__0_n_0 ;
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
  wire [1:0]NLW_mem_reg_0_15_28_31_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_31_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_31_DOE_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_31_DOF_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_31_DOG_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_15_28_31_DOH_UNCONNECTED;

  LUT4 #(
    .INIT(16'hEEEA)) 
    \FSM_onehot_curr_state[2]_i_1 
       (.I0(\FSM_onehot_curr_state_reg[1] ),
        .I1(reg1_valid_strobe),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "accelerator_inst/tx_cdc_fifo/mem" *) 
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
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .DID(DID),
        .DIE(DIE),
        .DIF(DIF),
        .DIG(DIG),
        .DIH({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(D[7:6]),
        .DOE(D[9:8]),
        .DOF(D[11:10]),
        .DOG(D[13:12]),
        .DOH(NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_200MHz),
        .WE(mem_reg_0_15_0_13_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    mem_reg_0_15_0_13_i_1__0
       (.I0(mac_out_valid),
        .I1(\wr_gray_ptr_reg_n_0_[0] ),
        .I2(\rd_gray_sync2_reg_n_0_[0] ),
        .I3(\wr_gray_ptr_reg_n_0_[1] ),
        .I4(\rd_gray_sync2_reg_n_0_[1] ),
        .I5(mem_reg_0_15_0_13_i_2__0_n_0),
        .O(mem_reg_0_15_0_13_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0660000000000660)) 
    mem_reg_0_15_0_13_i_2__0
       (.I0(\wr_gray_ptr_reg_n_0_[4] ),
        .I1(\rd_gray_sync2_reg_n_0_[4] ),
        .I2(\wr_gray_ptr_reg_n_0_[3] ),
        .I3(\rd_gray_sync2_reg_n_0_[3] ),
        .I4(\wr_gray_ptr_reg_n_0_[2] ),
        .I5(\rd_gray_sync2_reg_n_0_[2] ),
        .O(mem_reg_0_15_0_13_i_2__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "accelerator_inst/tx_cdc_fifo/mem" *) 
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
        .DIA(\result_reg_reg[15] ),
        .DIB(\result_reg_reg[15]_0 ),
        .DIC(\result_reg_reg[15]_1 ),
        .DID(\result_reg_reg[15]_2 ),
        .DIE(\result_reg_reg[15]_3 ),
        .DIF(\result_reg_reg[15]_4 ),
        .DIG(\result_reg_reg[15]_5 ),
        .DIH({1'b0,1'b0}),
        .DOA(D[15:14]),
        .DOB(D[17:16]),
        .DOC(D[19:18]),
        .DOD(D[21:20]),
        .DOE(D[23:22]),
        .DOF(D[25:24]),
        .DOG(D[27:26]),
        .DOH(NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_200MHz),
        .WE(mem_reg_0_15_0_13_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "accelerator_inst/tx_cdc_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM32M16 mem_reg_0_15_28_31
       (.ADDRA({1'b0,rd_bin_ptr_reg}),
        .ADDRB({1'b0,rd_bin_ptr_reg}),
        .ADDRC({1'b0,rd_bin_ptr_reg}),
        .ADDRD({1'b0,rd_bin_ptr_reg}),
        .ADDRE({1'b0,rd_bin_ptr_reg}),
        .ADDRF({1'b0,rd_bin_ptr_reg}),
        .ADDRG({1'b0,rd_bin_ptr_reg}),
        .ADDRH({1'b0,\wr_bin_ptr_reg_n_0_[3] ,\wr_bin_ptr_reg_n_0_[2] ,\wr_bin_ptr_reg_n_0_[1] ,\wr_bin_ptr_reg_n_0_[0] }),
        .DIA(\result_reg_reg[29] ),
        .DIB(\result_reg_reg[29]_0 ),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(D[29:28]),
        .DOB(D[31:30]),
        .DOC(NLW_mem_reg_0_15_28_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_15_28_31_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_mem_reg_0_15_28_31_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_mem_reg_0_15_28_31_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_mem_reg_0_15_28_31_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_mem_reg_0_15_28_31_DOH_UNCONNECTED[1:0]),
        .WCLK(clk_200MHz),
        .WE(mem_reg_0_15_0_13_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \rd_bin_ptr[0]_i_1 
       (.I0(\rd_gray_ptr[3]_i_2_n_0 ),
        .I1(rd_bin_ptr_reg[0]),
        .O(rd_bin_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \rd_bin_ptr[1]_i_1 
       (.I0(\rd_gray_ptr[3]_i_2_n_0 ),
        .I1(rd_bin_ptr_reg[0]),
        .I2(rd_bin_ptr_reg[1]),
        .O(rd_bin_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \rd_bin_ptr[2]_i_1 
       (.I0(rd_bin_ptr_reg[0]),
        .I1(\rd_gray_ptr[3]_i_2_n_0 ),
        .I2(rd_bin_ptr_reg[1]),
        .I3(rd_bin_ptr_reg[2]),
        .O(rd_bin_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \rd_bin_ptr[3]_i_1 
       (.I0(rd_bin_ptr_reg[1]),
        .I1(\rd_gray_ptr[3]_i_2_n_0 ),
        .I2(rd_bin_ptr_reg[0]),
        .I3(rd_bin_ptr_reg[2]),
        .I4(rd_bin_ptr_reg[3]),
        .O(rd_bin_next[3]));
  FDCE \rd_bin_ptr_reg[0] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[0]),
        .Q(rd_bin_ptr_reg[0]));
  FDCE \rd_bin_ptr_reg[1] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[1]),
        .Q(rd_bin_ptr_reg[1]));
  FDCE \rd_bin_ptr_reg[2] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[2]),
        .Q(rd_bin_ptr_reg[2]));
  FDCE \rd_bin_ptr_reg[3] 
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(\wr_bin_ptr_reg[3]_0 ),
        .D(rd_bin_next[3]),
        .Q(rd_bin_ptr_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \rd_gray_ptr[0]_i_1 
       (.I0(rd_bin_ptr_reg[1]),
        .I1(rd_bin_ptr_reg[0]),
        .I2(\rd_gray_ptr[3]_i_2_n_0 ),
        .O(rd_gray_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6656)) 
    \rd_gray_ptr[1]_i_1 
       (.I0(rd_bin_ptr_reg[2]),
        .I1(rd_bin_ptr_reg[1]),
        .I2(rd_bin_ptr_reg[0]),
        .I3(\rd_gray_ptr[3]_i_2_n_0 ),
        .O(rd_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h66566666)) 
    \rd_gray_ptr[2]_i_1 
       (.I0(rd_bin_ptr_reg[3]),
        .I1(rd_bin_ptr_reg[2]),
        .I2(rd_bin_ptr_reg[1]),
        .I3(\rd_gray_ptr[3]_i_2_n_0 ),
        .I4(rd_bin_ptr_reg[0]),
        .O(rd_gray_next[2]));
  LUT6 #(
    .INIT(64'h6666566666666666)) 
    \rd_gray_ptr[3]_i_1 
       (.I0(\rd_gray_ptr_reg_n_0_[4] ),
        .I1(rd_bin_ptr_reg[3]),
        .I2(rd_bin_ptr_reg[2]),
        .I3(rd_bin_ptr_reg[0]),
        .I4(\rd_gray_ptr[3]_i_2_n_0 ),
        .I5(rd_bin_ptr_reg[1]),
        .O(rd_gray_next[3]));
  LUT6 #(
    .INIT(64'h90090000FFFFFFFF)) 
    \rd_gray_ptr[3]_i_2 
       (.I0(\rd_gray_ptr_reg_n_0_[0] ),
        .I1(\wr_gray_sync2_reg_n_0_[0] ),
        .I2(\rd_gray_ptr_reg_n_0_[1] ),
        .I3(\wr_gray_sync2_reg_n_0_[1] ),
        .I4(\result_reg[31]_i_2_n_0 ),
        .I5(tx_af_rd_en),
        .O(\rd_gray_ptr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \rd_gray_ptr[4]_i_1 
       (.I0(rd_bin_ptr_reg[2]),
        .I1(rd_bin_ptr_reg[0]),
        .I2(\rd_gray_ptr[3]_i_2_n_0 ),
        .I3(rd_bin_ptr_reg[1]),
        .I4(rd_bin_ptr_reg[3]),
        .I5(\rd_gray_ptr_reg_n_0_[4] ),
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
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    \result_reg[31]_i_1 
       (.I0(Q[1]),
        .I1(\rd_gray_ptr_reg_n_0_[0] ),
        .I2(\wr_gray_sync2_reg_n_0_[0] ),
        .I3(\rd_gray_ptr_reg_n_0_[1] ),
        .I4(\wr_gray_sync2_reg_n_0_[1] ),
        .I5(\result_reg[31]_i_2_n_0 ),
        .O(\FSM_onehot_curr_state_reg[1] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \result_reg[31]_i_2 
       (.I0(\wr_gray_sync2_reg_n_0_[4] ),
        .I1(\rd_gray_ptr_reg_n_0_[4] ),
        .I2(\wr_gray_sync2_reg_n_0_[3] ),
        .I3(\rd_gray_ptr_reg_n_0_[3] ),
        .I4(\rd_gray_ptr_reg_n_0_[2] ),
        .I5(\wr_gray_sync2_reg_n_0_[2] ),
        .O(\result_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_bin_ptr[0]_i_1__0 
       (.I0(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_bin_next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \wr_bin_ptr[1]_i_1__0 
       (.I0(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_bin_next__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \wr_bin_ptr[2]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[0] ),
        .I1(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .I3(\wr_bin_ptr_reg_n_0_[2] ),
        .O(wr_bin_next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \wr_bin_ptr[3]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .I2(\wr_bin_ptr_reg_n_0_[0] ),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \wr_gray_ptr[0]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[1] ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .O(wr_gray_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6656)) 
    \wr_gray_ptr[1]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(\wr_bin_ptr_reg_n_0_[1] ),
        .I2(\wr_bin_ptr_reg_n_0_[0] ),
        .I3(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .O(wr_gray_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h66566666)) 
    \wr_gray_ptr[2]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[3] ),
        .I1(\wr_bin_ptr_reg_n_0_[2] ),
        .I2(\wr_bin_ptr_reg_n_0_[1] ),
        .I3(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .I4(\wr_bin_ptr_reg_n_0_[0] ),
        .O(wr_gray_next[2]));
  LUT6 #(
    .INIT(64'h6666566666666666)) 
    \wr_gray_ptr[3]_i_1__0 
       (.I0(\wr_gray_ptr_reg_n_0_[4] ),
        .I1(\wr_bin_ptr_reg_n_0_[3] ),
        .I2(\wr_bin_ptr_reg_n_0_[2] ),
        .I3(\wr_bin_ptr_reg_n_0_[0] ),
        .I4(\wr_gray_ptr[3]_i_2__0_n_0 ),
        .I5(\wr_bin_ptr_reg_n_0_[1] ),
        .O(wr_gray_next[3]));
  LUT6 #(
    .INIT(64'h90090000FFFFFFFF)) 
    \wr_gray_ptr[3]_i_2__0 
       (.I0(\wr_gray_ptr_reg_n_0_[0] ),
        .I1(\rd_gray_sync2_reg_n_0_[0] ),
        .I2(\wr_gray_ptr_reg_n_0_[1] ),
        .I3(\rd_gray_sync2_reg_n_0_[1] ),
        .I4(mem_reg_0_15_0_13_i_2__0_n_0),
        .I5(mac_out_valid),
        .O(\wr_gray_ptr[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \wr_gray_ptr[4]_i_1__0 
       (.I0(\wr_bin_ptr_reg_n_0_[2] ),
        .I1(\wr_bin_ptr_reg_n_0_[0] ),
        .I2(\wr_gray_ptr[3]_i_2__0_n_0 ),
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
    s_axi_bvalid,
    s_axi_rvalid,
    reg1_valid_strobe,
    Q,
    \reg1_reg[15]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    \rdata_reg[31]_0 ,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_wdata,
    D);
  output awready_reg_0;
  output arready_reg_0;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output reg1_valid_strobe;
  output [15:0]Q;
  output [15:0]\reg1_reg[15]_0 ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input [3:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input [29:0]\rdata_reg[31]_0 ;
  input [1:0]s_axi_araddr;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input [31:0]s_axi_wdata;
  input [1:0]D;

  wire [1:0]D;
  wire [15:0]Q;
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
  wire [31:16]reg0;
  wire \reg0[15]_i_1_n_0 ;
  wire \reg0[23]_i_1_n_0 ;
  wire \reg0[31]_i_1_n_0 ;
  wire \reg0[7]_i_1_n_0 ;
  wire [31:16]reg1;
  wire \reg1[15]_i_1_n_0 ;
  wire \reg1[23]_i_1_n_0 ;
  wire \reg1[31]_i_1_n_0 ;
  wire \reg1[7]_i_1_n_0 ;
  wire [15:0]\reg1_reg[15]_0 ;
  wire reg1_valid_strobe;
  wire rvalid00_out__0;
  wire rvalid_i_1_n_0;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_onehot_curr_state[2]_i_3 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wvalid),
        .I5(awready_reg_0),
        .O(reg1_valid_strobe));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h5555C000)) 
    bvalid_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(awready_reg_0),
        .I4(s_axi_bvalid),
        .O(bvalid_i_1_n_0));
  FDCE bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(awready_i_2_n_0),
        .D(bvalid_i_1_n_0),
        .Q(s_axi_bvalid));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(\reg1_reg[15]_0 [10]),
        .I2(\rdata_reg[31]_0 [8]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(\reg1_reg[15]_0 [11]),
        .I2(\rdata_reg[31]_0 [9]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(\reg1_reg[15]_0 [12]),
        .I2(\rdata_reg[31]_0 [10]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(\reg1_reg[15]_0 [13]),
        .I2(\rdata_reg[31]_0 [11]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(\reg1_reg[15]_0 [14]),
        .I2(\rdata_reg[31]_0 [12]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(\reg1_reg[15]_0 [15]),
        .I2(\rdata_reg[31]_0 [13]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[16]_i_1 
       (.I0(reg0[16]),
        .I1(reg1[16]),
        .I2(\rdata_reg[31]_0 [14]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[17]_i_1 
       (.I0(reg0[17]),
        .I1(reg1[17]),
        .I2(\rdata_reg[31]_0 [15]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[18]_i_1 
       (.I0(reg0[18]),
        .I1(reg1[18]),
        .I2(\rdata_reg[31]_0 [16]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[19]_i_1 
       (.I0(reg0[19]),
        .I1(reg1[19]),
        .I2(\rdata_reg[31]_0 [17]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[20]_i_1 
       (.I0(reg0[20]),
        .I1(reg1[20]),
        .I2(\rdata_reg[31]_0 [18]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[21]_i_1 
       (.I0(reg0[21]),
        .I1(reg1[21]),
        .I2(\rdata_reg[31]_0 [19]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[22]_i_1 
       (.I0(reg0[22]),
        .I1(reg1[22]),
        .I2(\rdata_reg[31]_0 [20]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[23]_i_1 
       (.I0(reg0[23]),
        .I1(reg1[23]),
        .I2(\rdata_reg[31]_0 [21]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[24]_i_1 
       (.I0(reg0[24]),
        .I1(reg1[24]),
        .I2(\rdata_reg[31]_0 [22]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[25]_i_1 
       (.I0(reg0[25]),
        .I1(reg1[25]),
        .I2(\rdata_reg[31]_0 [23]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[26]_i_1 
       (.I0(reg0[26]),
        .I1(reg1[26]),
        .I2(\rdata_reg[31]_0 [24]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[27]_i_1 
       (.I0(reg0[27]),
        .I1(reg1[27]),
        .I2(\rdata_reg[31]_0 [25]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[28]_i_1 
       (.I0(reg0[28]),
        .I1(reg1[28]),
        .I2(\rdata_reg[31]_0 [26]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[29]_i_1 
       (.I0(reg0[29]),
        .I1(reg1[29]),
        .I2(\rdata_reg[31]_0 [27]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\reg1_reg[15]_0 [2]),
        .I2(\rdata_reg[31]_0 [0]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[30]_i_1 
       (.I0(reg0[30]),
        .I1(reg1[30]),
        .I2(\rdata_reg[31]_0 [28]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[31]_i_1 
       (.I0(reg0[31]),
        .I1(reg1[31]),
        .I2(\rdata_reg[31]_0 [29]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(\reg1_reg[15]_0 [3]),
        .I2(\rdata_reg[31]_0 [1]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(\reg1_reg[15]_0 [4]),
        .I2(\rdata_reg[31]_0 [2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(\reg1_reg[15]_0 [5]),
        .I2(\rdata_reg[31]_0 [3]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\reg1_reg[15]_0 [6]),
        .I2(\rdata_reg[31]_0 [4]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\reg1_reg[15]_0 [7]),
        .I2(\rdata_reg[31]_0 [5]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(\reg1_reg[15]_0 [8]),
        .I2(\rdata_reg[31]_0 [6]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(\reg1_reg[15]_0 [9]),
        .I2(\rdata_reg[31]_0 [7]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(\rdata[9]_i_1_n_0 ));
  FDCE \rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(D[0]),
        .Q(s_axi_rdata[0]));
  FDCE \rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]));
  FDCE \rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]));
  FDCE \rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]));
  FDCE \rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]));
  FDCE \rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]));
  FDCE \rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]));
  FDCE \rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]));
  FDCE \rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]));
  FDCE \rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]));
  FDCE \rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]));
  FDCE \rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(D[1]),
        .Q(s_axi_rdata[1]));
  FDCE \rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]));
  FDCE \rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]));
  FDCE \rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]));
  FDCE \rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]));
  FDCE \rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]));
  FDCE \rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]));
  FDCE \rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]));
  FDCE \rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]));
  FDCE \rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]));
  FDCE \rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]));
  FDCE \rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]));
  FDCE \rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]));
  FDCE \rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[31]_i_1_n_0 ),
        .Q(s_axi_rdata[31]));
  FDCE \rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]));
  FDCE \rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]));
  FDCE \rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]));
  FDCE \rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]));
  FDCE \rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]));
  FDCE \rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]));
  FDCE \rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(rvalid00_out__0),
        .CLR(awready_i_2_n_0),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \reg0[15]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[1]),
        .O(\reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \reg0[23]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[2]),
        .O(\reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \reg0[31]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[3]),
        .O(\reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \reg0[7]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[0]),
        .O(\reg0[7]_i_1_n_0 ));
  FDCE \reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(Q[0]));
  FDCE \reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(Q[10]));
  FDCE \reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(Q[11]));
  FDCE \reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(Q[12]));
  FDCE \reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(Q[13]));
  FDCE \reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(Q[14]));
  FDCE \reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(Q[15]));
  FDCE \reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[16]),
        .Q(reg0[16]));
  FDCE \reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[17]),
        .Q(reg0[17]));
  FDCE \reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[18]),
        .Q(reg0[18]));
  FDCE \reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[19]),
        .Q(reg0[19]));
  FDCE \reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(Q[1]));
  FDCE \reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[20]),
        .Q(reg0[20]));
  FDCE \reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[21]),
        .Q(reg0[21]));
  FDCE \reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[22]),
        .Q(reg0[22]));
  FDCE \reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg0[23]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[23]),
        .Q(reg0[23]));
  FDCE \reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[24]),
        .Q(reg0[24]));
  FDCE \reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[25]),
        .Q(reg0[25]));
  FDCE \reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[26]),
        .Q(reg0[26]));
  FDCE \reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[27]),
        .Q(reg0[27]));
  FDCE \reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[28]),
        .Q(reg0[28]));
  FDCE \reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[29]),
        .Q(reg0[29]));
  FDCE \reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(Q[2]));
  FDCE \reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[30]),
        .Q(reg0[30]));
  FDCE \reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[31]),
        .Q(reg0[31]));
  FDCE \reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(Q[3]));
  FDCE \reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(Q[4]));
  FDCE \reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(Q[5]));
  FDCE \reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(Q[6]));
  FDCE \reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg0[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(Q[7]));
  FDCE \reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(Q[8]));
  FDCE \reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg0[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \reg1[15]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[1]),
        .O(\reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \reg1[23]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[2]),
        .O(\reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \reg1[31]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[3]),
        .O(\reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \reg1[7]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wstrb[0]),
        .O(\reg1[7]_i_1_n_0 ));
  FDCE \reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(\reg1_reg[15]_0 [0]));
  FDCE \reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(\reg1_reg[15]_0 [10]));
  FDCE \reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(\reg1_reg[15]_0 [11]));
  FDCE \reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(\reg1_reg[15]_0 [12]));
  FDCE \reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(\reg1_reg[15]_0 [13]));
  FDCE \reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(\reg1_reg[15]_0 [14]));
  FDCE \reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(\reg1_reg[15]_0 [15]));
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
        .Q(\reg1_reg[15]_0 [1]));
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
        .Q(\reg1_reg[15]_0 [2]));
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
        .Q(\reg1_reg[15]_0 [3]));
  FDCE \reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(\reg1_reg[15]_0 [4]));
  FDCE \reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(\reg1_reg[15]_0 [5]));
  FDCE \reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(\reg1_reg[15]_0 [6]));
  FDCE \reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg1[7]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(\reg1_reg[15]_0 [7]));
  FDCE \reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(\reg1_reg[15]_0 [8]));
  FDCE \reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg1[15]_i_1_n_0 ),
        .CLR(awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(\reg1_reg[15]_0 [9]));
  LUT3 #(
    .INIT(8'h20)) 
    rvalid00_out
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(arready_reg_0),
        .O(rvalid00_out__0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
   (mac_out_valid,
    DIA,
    DIB,
    DIC,
    DID,
    DIE,
    DIF,
    DIG,
    \result_reg_reg[15]_0 ,
    \result_reg_reg[17]_0 ,
    \result_reg_reg[19]_0 ,
    \result_reg_reg[21]_0 ,
    \result_reg_reg[23]_0 ,
    \result_reg_reg[25]_0 ,
    \result_reg_reg[27]_0 ,
    \result_reg_reg[29]_0 ,
    \result_reg_reg[31]_0 ,
    clk_200MHz,
    Q,
    rd_data,
    mac_in_valid_reg,
    \result_reg_reg[0]_0 ,
    \result_reg_reg[31]_1 );
  output mac_out_valid;
  output [1:0]DIA;
  output [1:0]DIB;
  output [1:0]DIC;
  output [1:0]DID;
  output [1:0]DIE;
  output [1:0]DIF;
  output [1:0]DIG;
  output [1:0]\result_reg_reg[15]_0 ;
  output [1:0]\result_reg_reg[17]_0 ;
  output [1:0]\result_reg_reg[19]_0 ;
  output [1:0]\result_reg_reg[21]_0 ;
  output [1:0]\result_reg_reg[23]_0 ;
  output [1:0]\result_reg_reg[25]_0 ;
  output [1:0]\result_reg_reg[27]_0 ;
  output [1:0]\result_reg_reg[29]_0 ;
  output [1:0]\result_reg_reg[31]_0 ;
  input clk_200MHz;
  input [15:0]Q;
  input [15:0]rd_data;
  input mac_in_valid_reg;
  input \result_reg_reg[0]_0 ;
  input \result_reg_reg[31]_1 ;

  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [1:0]DID;
  wire [1:0]DIE;
  wire [1:0]DIF;
  wire [1:0]DIG;
  wire [15:0]Q;
  wire clk_200MHz;
  wire [30:0]in;
  wire mac_in_valid_reg;
  wire mac_out_valid;
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
  wire [15:0]rd_data;
  wire \result_reg[0]_i_10_n_0 ;
  wire \result_reg[0]_i_11_n_0 ;
  wire \result_reg[0]_i_12_n_0 ;
  wire \result_reg[0]_i_13_n_0 ;
  wire \result_reg[0]_i_14_n_0 ;
  wire \result_reg[0]_i_15_n_0 ;
  wire \result_reg[0]_i_16_n_0 ;
  wire \result_reg[0]_i_17_n_0 ;
  wire \result_reg[16]_i_10_n_0 ;
  wire \result_reg[16]_i_11_n_0 ;
  wire \result_reg[16]_i_12_n_0 ;
  wire \result_reg[16]_i_13_n_0 ;
  wire \result_reg[16]_i_14_n_0 ;
  wire \result_reg[16]_i_15_n_0 ;
  wire \result_reg[16]_i_16_n_0 ;
  wire \result_reg[16]_i_17_n_0 ;
  wire \result_reg[24]_i_10_n_0 ;
  wire \result_reg[24]_i_11_n_0 ;
  wire \result_reg[24]_i_12_n_0 ;
  wire \result_reg[24]_i_13_n_0 ;
  wire \result_reg[24]_i_14_n_0 ;
  wire \result_reg[24]_i_15_n_0 ;
  wire \result_reg[24]_i_16_n_0 ;
  wire \result_reg[24]_i_9_n_0 ;
  wire \result_reg[8]_i_10_n_0 ;
  wire \result_reg[8]_i_11_n_0 ;
  wire \result_reg[8]_i_12_n_0 ;
  wire \result_reg[8]_i_13_n_0 ;
  wire \result_reg[8]_i_14_n_0 ;
  wire \result_reg[8]_i_15_n_0 ;
  wire \result_reg[8]_i_16_n_0 ;
  wire \result_reg[8]_i_17_n_0 ;
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
  wire [1:0]\result_reg_reg[15]_0 ;
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
  wire [1:0]\result_reg_reg[17]_0 ;
  wire [1:0]\result_reg_reg[19]_0 ;
  wire [1:0]\result_reg_reg[21]_0 ;
  wire [1:0]\result_reg_reg[23]_0 ;
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
  wire [1:0]\result_reg_reg[25]_0 ;
  wire [1:0]\result_reg_reg[27]_0 ;
  wire [1:0]\result_reg_reg[29]_0 ;
  wire [1:0]\result_reg_reg[31]_0 ;
  wire \result_reg_reg[31]_1 ;
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
        .B({1'b0,1'b0,Q}),
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
  FDCE out_valid_reg
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(valid_stage1),
        .Q(mac_out_valid));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_10 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_98),
        .I2(DID[1]),
        .O(\result_reg[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_11 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_99),
        .I2(DID[0]),
        .O(\result_reg[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_12 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_100),
        .I2(DIC[1]),
        .O(\result_reg[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_13 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_101),
        .I2(DIC[0]),
        .O(\result_reg[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_14 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_102),
        .I2(DIB[1]),
        .O(\result_reg[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_15 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_103),
        .I2(DIB[0]),
        .O(\result_reg[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_16 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_104),
        .I2(DIA[1]),
        .O(\result_reg[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[0]_i_17 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_105),
        .I2(DIA[0]),
        .O(\result_reg[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_2 
       (.I0(mult_reg0_n_98),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_3 
       (.I0(mult_reg0_n_99),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_4 
       (.I0(mult_reg0_n_100),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_5 
       (.I0(mult_reg0_n_101),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_6 
       (.I0(mult_reg0_n_102),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_7 
       (.I0(mult_reg0_n_103),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_8 
       (.I0(mult_reg0_n_104),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_9 
       (.I0(mult_reg0_n_105),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_10 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_82),
        .I2(\result_reg_reg[23]_0 [1]),
        .O(\result_reg[16]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_11 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_83),
        .I2(\result_reg_reg[23]_0 [0]),
        .O(\result_reg[16]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_12 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_84),
        .I2(\result_reg_reg[21]_0 [1]),
        .O(\result_reg[16]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_13 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_85),
        .I2(\result_reg_reg[21]_0 [0]),
        .O(\result_reg[16]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_14 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_86),
        .I2(\result_reg_reg[19]_0 [1]),
        .O(\result_reg[16]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_15 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_87),
        .I2(\result_reg_reg[19]_0 [0]),
        .O(\result_reg[16]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_16 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_88),
        .I2(\result_reg_reg[17]_0 [1]),
        .O(\result_reg[16]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[16]_i_17 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_89),
        .I2(\result_reg_reg[17]_0 [0]),
        .O(\result_reg[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_2 
       (.I0(mult_reg0_n_82),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_3 
       (.I0(mult_reg0_n_83),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_4 
       (.I0(mult_reg0_n_84),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_5 
       (.I0(mult_reg0_n_85),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_6 
       (.I0(mult_reg0_n_86),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_7 
       (.I0(mult_reg0_n_87),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_8 
       (.I0(mult_reg0_n_88),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_i_9 
       (.I0(mult_reg0_n_89),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[16]));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_10 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_75),
        .I2(\result_reg_reg[31]_0 [0]),
        .O(\result_reg[24]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_11 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_76),
        .I2(\result_reg_reg[29]_0 [1]),
        .O(\result_reg[24]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_12 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_77),
        .I2(\result_reg_reg[29]_0 [0]),
        .O(\result_reg[24]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_13 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_78),
        .I2(\result_reg_reg[27]_0 [1]),
        .O(\result_reg[24]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_14 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_79),
        .I2(\result_reg_reg[27]_0 [0]),
        .O(\result_reg[24]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_15 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_80),
        .I2(\result_reg_reg[25]_0 [1]),
        .O(\result_reg[24]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_16 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_81),
        .I2(\result_reg_reg[25]_0 [0]),
        .O(\result_reg[24]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_i_2 
       (.I0(mult_reg0_n_75),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_i_3 
       (.I0(mult_reg0_n_76),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_i_4 
       (.I0(mult_reg0_n_77),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_i_5 
       (.I0(mult_reg0_n_78),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_i_6 
       (.I0(mult_reg0_n_79),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_i_7 
       (.I0(mult_reg0_n_80),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_i_8 
       (.I0(mult_reg0_n_81),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[24]));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[24]_i_9 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_74),
        .I2(\result_reg_reg[31]_0 [1]),
        .O(\result_reg[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_10 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_90),
        .I2(\result_reg_reg[15]_0 [1]),
        .O(\result_reg[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_11 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_91),
        .I2(\result_reg_reg[15]_0 [0]),
        .O(\result_reg[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_12 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_92),
        .I2(DIG[1]),
        .O(\result_reg[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_13 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_93),
        .I2(DIG[0]),
        .O(\result_reg[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_14 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_94),
        .I2(DIF[1]),
        .O(\result_reg[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_15 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_95),
        .I2(DIF[0]),
        .O(\result_reg[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_16 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_96),
        .I2(DIE[1]),
        .O(\result_reg[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \result_reg[8]_i_17 
       (.I0(\result_reg_reg[31]_1 ),
        .I1(mult_reg0_n_97),
        .I2(DIE[0]),
        .O(\result_reg[8]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_2 
       (.I0(mult_reg0_n_90),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_3 
       (.I0(mult_reg0_n_91),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_4 
       (.I0(mult_reg0_n_92),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_5 
       (.I0(mult_reg0_n_93),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_6 
       (.I0(mult_reg0_n_94),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_7 
       (.I0(mult_reg0_n_95),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_8 
       (.I0(mult_reg0_n_96),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_i_9 
       (.I0(mult_reg0_n_97),
        .I1(\result_reg_reg[31]_1 ),
        .O(in[8]));
  FDCE \result_reg_reg[0] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_15 ),
        .Q(DIA[0]));
  CARRY8 \result_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_reg_reg[0]_i_1_n_0 ,\result_reg_reg[0]_i_1_n_1 ,\result_reg_reg[0]_i_1_n_2 ,\result_reg_reg[0]_i_1_n_3 ,\result_reg_reg[0]_i_1_n_4 ,\result_reg_reg[0]_i_1_n_5 ,\result_reg_reg[0]_i_1_n_6 ,\result_reg_reg[0]_i_1_n_7 }),
        .DI(in[7:0]),
        .O({\result_reg_reg[0]_i_1_n_8 ,\result_reg_reg[0]_i_1_n_9 ,\result_reg_reg[0]_i_1_n_10 ,\result_reg_reg[0]_i_1_n_11 ,\result_reg_reg[0]_i_1_n_12 ,\result_reg_reg[0]_i_1_n_13 ,\result_reg_reg[0]_i_1_n_14 ,\result_reg_reg[0]_i_1_n_15 }),
        .S({\result_reg[0]_i_10_n_0 ,\result_reg[0]_i_11_n_0 ,\result_reg[0]_i_12_n_0 ,\result_reg[0]_i_13_n_0 ,\result_reg[0]_i_14_n_0 ,\result_reg[0]_i_15_n_0 ,\result_reg[0]_i_16_n_0 ,\result_reg[0]_i_17_n_0 }));
  FDCE \result_reg_reg[10] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_13 ),
        .Q(DIF[0]));
  FDCE \result_reg_reg[11] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_12 ),
        .Q(DIF[1]));
  FDCE \result_reg_reg[12] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_11 ),
        .Q(DIG[0]));
  FDCE \result_reg_reg[13] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_10 ),
        .Q(DIG[1]));
  FDCE \result_reg_reg[14] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_9 ),
        .Q(\result_reg_reg[15]_0 [0]));
  FDCE \result_reg_reg[15] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_8 ),
        .Q(\result_reg_reg[15]_0 [1]));
  FDCE \result_reg_reg[16] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_15 ),
        .Q(\result_reg_reg[17]_0 [0]));
  CARRY8 \result_reg_reg[16]_i_1 
       (.CI(\result_reg_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_reg_reg[16]_i_1_n_0 ,\result_reg_reg[16]_i_1_n_1 ,\result_reg_reg[16]_i_1_n_2 ,\result_reg_reg[16]_i_1_n_3 ,\result_reg_reg[16]_i_1_n_4 ,\result_reg_reg[16]_i_1_n_5 ,\result_reg_reg[16]_i_1_n_6 ,\result_reg_reg[16]_i_1_n_7 }),
        .DI(in[23:16]),
        .O({\result_reg_reg[16]_i_1_n_8 ,\result_reg_reg[16]_i_1_n_9 ,\result_reg_reg[16]_i_1_n_10 ,\result_reg_reg[16]_i_1_n_11 ,\result_reg_reg[16]_i_1_n_12 ,\result_reg_reg[16]_i_1_n_13 ,\result_reg_reg[16]_i_1_n_14 ,\result_reg_reg[16]_i_1_n_15 }),
        .S({\result_reg[16]_i_10_n_0 ,\result_reg[16]_i_11_n_0 ,\result_reg[16]_i_12_n_0 ,\result_reg[16]_i_13_n_0 ,\result_reg[16]_i_14_n_0 ,\result_reg[16]_i_15_n_0 ,\result_reg[16]_i_16_n_0 ,\result_reg[16]_i_17_n_0 }));
  FDCE \result_reg_reg[17] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_14 ),
        .Q(\result_reg_reg[17]_0 [1]));
  FDCE \result_reg_reg[18] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_13 ),
        .Q(\result_reg_reg[19]_0 [0]));
  FDCE \result_reg_reg[19] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_12 ),
        .Q(\result_reg_reg[19]_0 [1]));
  FDCE \result_reg_reg[1] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_14 ),
        .Q(DIA[1]));
  FDCE \result_reg_reg[20] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_11 ),
        .Q(\result_reg_reg[21]_0 [0]));
  FDCE \result_reg_reg[21] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_10 ),
        .Q(\result_reg_reg[21]_0 [1]));
  FDCE \result_reg_reg[22] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_9 ),
        .Q(\result_reg_reg[23]_0 [0]));
  FDCE \result_reg_reg[23] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[16]_i_1_n_8 ),
        .Q(\result_reg_reg[23]_0 [1]));
  FDCE \result_reg_reg[24] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_15 ),
        .Q(\result_reg_reg[25]_0 [0]));
  CARRY8 \result_reg_reg[24]_i_1 
       (.CI(\result_reg_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_result_reg_reg[24]_i_1_CO_UNCONNECTED [7],\result_reg_reg[24]_i_1_n_1 ,\result_reg_reg[24]_i_1_n_2 ,\result_reg_reg[24]_i_1_n_3 ,\result_reg_reg[24]_i_1_n_4 ,\result_reg_reg[24]_i_1_n_5 ,\result_reg_reg[24]_i_1_n_6 ,\result_reg_reg[24]_i_1_n_7 }),
        .DI({1'b0,in[30:24]}),
        .O({\result_reg_reg[24]_i_1_n_8 ,\result_reg_reg[24]_i_1_n_9 ,\result_reg_reg[24]_i_1_n_10 ,\result_reg_reg[24]_i_1_n_11 ,\result_reg_reg[24]_i_1_n_12 ,\result_reg_reg[24]_i_1_n_13 ,\result_reg_reg[24]_i_1_n_14 ,\result_reg_reg[24]_i_1_n_15 }),
        .S({\result_reg[24]_i_9_n_0 ,\result_reg[24]_i_10_n_0 ,\result_reg[24]_i_11_n_0 ,\result_reg[24]_i_12_n_0 ,\result_reg[24]_i_13_n_0 ,\result_reg[24]_i_14_n_0 ,\result_reg[24]_i_15_n_0 ,\result_reg[24]_i_16_n_0 }));
  FDCE \result_reg_reg[25] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_14 ),
        .Q(\result_reg_reg[25]_0 [1]));
  FDCE \result_reg_reg[26] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_13 ),
        .Q(\result_reg_reg[27]_0 [0]));
  FDCE \result_reg_reg[27] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_12 ),
        .Q(\result_reg_reg[27]_0 [1]));
  FDCE \result_reg_reg[28] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_11 ),
        .Q(\result_reg_reg[29]_0 [0]));
  FDCE \result_reg_reg[29] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_10 ),
        .Q(\result_reg_reg[29]_0 [1]));
  FDCE \result_reg_reg[2] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_13 ),
        .Q(DIB[0]));
  FDCE \result_reg_reg[30] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_9 ),
        .Q(\result_reg_reg[31]_0 [0]));
  FDCE \result_reg_reg[31] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[24]_i_1_n_8 ),
        .Q(\result_reg_reg[31]_0 [1]));
  FDCE \result_reg_reg[3] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_12 ),
        .Q(DIB[1]));
  FDCE \result_reg_reg[4] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_11 ),
        .Q(DIC[0]));
  FDCE \result_reg_reg[5] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_10 ),
        .Q(DIC[1]));
  FDCE \result_reg_reg[6] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_9 ),
        .Q(DID[0]));
  FDCE \result_reg_reg[7] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[0]_i_1_n_8 ),
        .Q(DID[1]));
  FDCE \result_reg_reg[8] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_15 ),
        .Q(DIE[0]));
  CARRY8 \result_reg_reg[8]_i_1 
       (.CI(\result_reg_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_reg_reg[8]_i_1_n_0 ,\result_reg_reg[8]_i_1_n_1 ,\result_reg_reg[8]_i_1_n_2 ,\result_reg_reg[8]_i_1_n_3 ,\result_reg_reg[8]_i_1_n_4 ,\result_reg_reg[8]_i_1_n_5 ,\result_reg_reg[8]_i_1_n_6 ,\result_reg_reg[8]_i_1_n_7 }),
        .DI(in[15:8]),
        .O({\result_reg_reg[8]_i_1_n_8 ,\result_reg_reg[8]_i_1_n_9 ,\result_reg_reg[8]_i_1_n_10 ,\result_reg_reg[8]_i_1_n_11 ,\result_reg_reg[8]_i_1_n_12 ,\result_reg_reg[8]_i_1_n_13 ,\result_reg_reg[8]_i_1_n_14 ,\result_reg_reg[8]_i_1_n_15 }),
        .S({\result_reg[8]_i_10_n_0 ,\result_reg[8]_i_11_n_0 ,\result_reg[8]_i_12_n_0 ,\result_reg[8]_i_13_n_0 ,\result_reg[8]_i_14_n_0 ,\result_reg[8]_i_15_n_0 ,\result_reg[8]_i_16_n_0 ,\result_reg[8]_i_17_n_0 }));
  FDCE \result_reg_reg[9] 
       (.C(clk_200MHz),
        .CE(valid_stage1),
        .CLR(\result_reg_reg[0]_0 ),
        .D(\result_reg_reg[8]_i_1_n_14 ),
        .Q(DIE[1]));
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
    D,
    \result_reg_reg[31]_0 ,
    clk_200MHz,
    Q,
    clk_100MHz,
    reg1_valid_strobe,
    \result_reg_reg[31]_1 ,
    s_axi_araddr,
    DSP_A_B_DATA_INST,
    sys_rst_n);
  output sys_rst_n_0;
  output [1:0]D;
  output [29:0]\result_reg_reg[31]_0 ;
  input clk_200MHz;
  input [15:0]Q;
  input clk_100MHz;
  input reg1_valid_strobe;
  input \result_reg_reg[31]_1 ;
  input [1:0]s_axi_araddr;
  input [15:0]DSP_A_B_DATA_INST;
  input sys_rst_n;

  wire [1:0]D;
  wire [15:0]DSP_A_B_DATA_INST;
  wire \FSM_onehot_curr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire [15:0]Q;
  wire clk_100MHz;
  wire clk_200MHz;
  wire mac_in_valid_reg;
  wire mac_out_valid;
  wire [15:0]rd_data;
  wire [31:0]rd_data__0;
  wire reg1_valid_strobe;
  wire [1:0]reg2_status;
  wire [1:0]result_reg;
  wire result_reg_0;
  wire [29:0]\result_reg_reg[31]_0 ;
  wire \result_reg_reg[31]_1 ;
  wire rx_af_rd_en_reg0;
  wire [1:0]s_axi_araddr;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire tx_af_rd_en;
  wire tx_cdc_fifo_n_32;
  wire u_mac_n_1;
  wire u_mac_n_10;
  wire u_mac_n_11;
  wire u_mac_n_12;
  wire u_mac_n_13;
  wire u_mac_n_14;
  wire u_mac_n_15;
  wire u_mac_n_16;
  wire u_mac_n_17;
  wire u_mac_n_18;
  wire u_mac_n_19;
  wire u_mac_n_2;
  wire u_mac_n_20;
  wire u_mac_n_21;
  wire u_mac_n_22;
  wire u_mac_n_23;
  wire u_mac_n_24;
  wire u_mac_n_25;
  wire u_mac_n_26;
  wire u_mac_n_27;
  wire u_mac_n_28;
  wire u_mac_n_29;
  wire u_mac_n_3;
  wire u_mac_n_30;
  wire u_mac_n_31;
  wire u_mac_n_32;
  wire u_mac_n_4;
  wire u_mac_n_5;
  wire u_mac_n_6;
  wire u_mac_n_7;
  wire u_mac_n_8;
  wire u_mac_n_9;

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
        .CE(tx_cdc_fifo_n_32),
        .D(1'b0),
        .PRE(sys_rst_n_0),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE_ST:001,PROC_ST:010,DONE_ST:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clk_100MHz),
        .CE(tx_cdc_fifo_n_32),
        .CLR(sys_rst_n_0),
        .D(\FSM_onehot_curr_state[1]_i_1_n_0 ),
        .Q(reg2_status[0]));
  (* FSM_ENCODED_STATES = "IDLE_ST:001,PROC_ST:010,DONE_ST:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clk_100MHz),
        .CE(tx_cdc_fifo_n_32),
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
        .I5(DSP_A_B_DATA_INST[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[1]_i_1 
       (.I0(reg2_status[1]),
        .I1(result_reg[1]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(Q[1]),
        .I5(DSP_A_B_DATA_INST[1]),
        .O(D[1]));
  FDCE \result_reg_reg[0] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[0]),
        .Q(result_reg[0]));
  FDCE \result_reg_reg[10] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[10]),
        .Q(\result_reg_reg[31]_0 [8]));
  FDCE \result_reg_reg[11] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[11]),
        .Q(\result_reg_reg[31]_0 [9]));
  FDCE \result_reg_reg[12] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[12]),
        .Q(\result_reg_reg[31]_0 [10]));
  FDCE \result_reg_reg[13] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[13]),
        .Q(\result_reg_reg[31]_0 [11]));
  FDCE \result_reg_reg[14] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[14]),
        .Q(\result_reg_reg[31]_0 [12]));
  FDCE \result_reg_reg[15] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[15]),
        .Q(\result_reg_reg[31]_0 [13]));
  FDCE \result_reg_reg[16] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[16]),
        .Q(\result_reg_reg[31]_0 [14]));
  FDCE \result_reg_reg[17] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[17]),
        .Q(\result_reg_reg[31]_0 [15]));
  FDCE \result_reg_reg[18] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[18]),
        .Q(\result_reg_reg[31]_0 [16]));
  FDCE \result_reg_reg[19] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[19]),
        .Q(\result_reg_reg[31]_0 [17]));
  FDCE \result_reg_reg[1] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[1]),
        .Q(result_reg[1]));
  FDCE \result_reg_reg[20] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[20]),
        .Q(\result_reg_reg[31]_0 [18]));
  FDCE \result_reg_reg[21] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[21]),
        .Q(\result_reg_reg[31]_0 [19]));
  FDCE \result_reg_reg[22] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[22]),
        .Q(\result_reg_reg[31]_0 [20]));
  FDCE \result_reg_reg[23] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[23]),
        .Q(\result_reg_reg[31]_0 [21]));
  FDCE \result_reg_reg[24] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[24]),
        .Q(\result_reg_reg[31]_0 [22]));
  FDCE \result_reg_reg[25] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[25]),
        .Q(\result_reg_reg[31]_0 [23]));
  FDCE \result_reg_reg[26] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[26]),
        .Q(\result_reg_reg[31]_0 [24]));
  FDCE \result_reg_reg[27] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[27]),
        .Q(\result_reg_reg[31]_0 [25]));
  FDCE \result_reg_reg[28] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[28]),
        .Q(\result_reg_reg[31]_0 [26]));
  FDCE \result_reg_reg[29] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[29]),
        .Q(\result_reg_reg[31]_0 [27]));
  FDCE \result_reg_reg[2] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[2]),
        .Q(\result_reg_reg[31]_0 [0]));
  FDCE \result_reg_reg[30] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[30]),
        .Q(\result_reg_reg[31]_0 [28]));
  FDCE \result_reg_reg[31] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[31]),
        .Q(\result_reg_reg[31]_0 [29]));
  FDCE \result_reg_reg[3] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[3]),
        .Q(\result_reg_reg[31]_0 [1]));
  FDCE \result_reg_reg[4] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[4]),
        .Q(\result_reg_reg[31]_0 [2]));
  FDCE \result_reg_reg[5] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[5]),
        .Q(\result_reg_reg[31]_0 [3]));
  FDCE \result_reg_reg[6] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[6]),
        .Q(\result_reg_reg[31]_0 [4]));
  FDCE \result_reg_reg[7] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[7]),
        .Q(\result_reg_reg[31]_0 [5]));
  FDCE \result_reg_reg[8] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[8]),
        .Q(\result_reg_reg[31]_0 [6]));
  FDCE \result_reg_reg[9] 
       (.C(clk_100MHz),
        .CE(result_reg_0),
        .CLR(sys_rst_n_0),
        .D(rd_data__0[9]),
        .Q(\result_reg_reg[31]_0 [7]));
  FDCE rx_af_rd_en_reg_reg
       (.C(clk_200MHz),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(rx_af_rd_en_reg0),
        .Q(mac_in_valid_reg));
  ps_pl_system_top_system_level_0_3_async_fifo rx_cdc_fifo
       (.DSP_A_B_DATA_INST(DSP_A_B_DATA_INST),
        .clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
        .mac_in_valid_reg(mac_in_valid_reg),
        .rd_data(rd_data),
        .reg1_valid_strobe(reg1_valid_strobe),
        .rx_af_rd_en_reg0(rx_af_rd_en_reg0),
        .\wr_bin_ptr_reg[3]_0 (sys_rst_n_0));
  FDCE tx_af_rd_en_reg_reg
       (.C(clk_100MHz),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(result_reg_0),
        .Q(tx_af_rd_en));
  ps_pl_system_top_system_level_0_3_async_fifo_0 tx_cdc_fifo
       (.D(rd_data__0),
        .DIA({u_mac_n_1,u_mac_n_2}),
        .DIB({u_mac_n_3,u_mac_n_4}),
        .DIC({u_mac_n_5,u_mac_n_6}),
        .DID({u_mac_n_7,u_mac_n_8}),
        .DIE({u_mac_n_9,u_mac_n_10}),
        .DIF({u_mac_n_11,u_mac_n_12}),
        .DIG({u_mac_n_13,u_mac_n_14}),
        .E(tx_cdc_fifo_n_32),
        .\FSM_onehot_curr_state_reg[1] (result_reg_0),
        .Q({reg2_status,\FSM_onehot_curr_state_reg_n_0_[0] }),
        .clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
        .mac_out_valid(mac_out_valid),
        .reg1_valid_strobe(reg1_valid_strobe),
        .\result_reg_reg[15] ({u_mac_n_15,u_mac_n_16}),
        .\result_reg_reg[15]_0 ({u_mac_n_17,u_mac_n_18}),
        .\result_reg_reg[15]_1 ({u_mac_n_19,u_mac_n_20}),
        .\result_reg_reg[15]_2 ({u_mac_n_21,u_mac_n_22}),
        .\result_reg_reg[15]_3 ({u_mac_n_23,u_mac_n_24}),
        .\result_reg_reg[15]_4 ({u_mac_n_25,u_mac_n_26}),
        .\result_reg_reg[15]_5 ({u_mac_n_27,u_mac_n_28}),
        .\result_reg_reg[29] ({u_mac_n_29,u_mac_n_30}),
        .\result_reg_reg[29]_0 ({u_mac_n_31,u_mac_n_32}),
        .tx_af_rd_en(tx_af_rd_en),
        .\wr_bin_ptr_reg[3]_0 (sys_rst_n_0));
  ps_pl_system_top_system_level_0_3_pipelined_mac u_mac
       (.DIA({u_mac_n_1,u_mac_n_2}),
        .DIB({u_mac_n_3,u_mac_n_4}),
        .DIC({u_mac_n_5,u_mac_n_6}),
        .DID({u_mac_n_7,u_mac_n_8}),
        .DIE({u_mac_n_9,u_mac_n_10}),
        .DIF({u_mac_n_11,u_mac_n_12}),
        .DIG({u_mac_n_13,u_mac_n_14}),
        .Q(Q),
        .clk_200MHz(clk_200MHz),
        .mac_in_valid_reg(mac_in_valid_reg),
        .mac_out_valid(mac_out_valid),
        .rd_data(rd_data),
        .\result_reg_reg[0]_0 (sys_rst_n_0),
        .\result_reg_reg[15]_0 ({u_mac_n_15,u_mac_n_16}),
        .\result_reg_reg[17]_0 ({u_mac_n_17,u_mac_n_18}),
        .\result_reg_reg[19]_0 ({u_mac_n_19,u_mac_n_20}),
        .\result_reg_reg[21]_0 ({u_mac_n_21,u_mac_n_22}),
        .\result_reg_reg[23]_0 ({u_mac_n_23,u_mac_n_24}),
        .\result_reg_reg[25]_0 ({u_mac_n_25,u_mac_n_26}),
        .\result_reg_reg[27]_0 ({u_mac_n_27,u_mac_n_28}),
        .\result_reg_reg[29]_0 ({u_mac_n_29,u_mac_n_30}),
        .\result_reg_reg[31]_0 ({u_mac_n_31,u_mac_n_32}),
        .\result_reg_reg[31]_1 (\result_reg_reg[31]_1 ));
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
    s_axi_rready);
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

  wire \<const0> ;
  wire \<const1> ;
  wire accelerator_inst_n_0;
  wire accelerator_inst_n_1;
  wire accelerator_inst_n_2;
  wire clk_100MHz;
  wire clk_200MHz;
  wire [15:0]reg0;
  wire [15:0]reg1;
  wire reg1_valid_strobe;
  wire [31:2]result_reg;
  wire \result_reg_reg[0]_i_18_n_0 ;
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
  wire sys_rst_n;

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
       (.D({accelerator_inst_n_1,accelerator_inst_n_2}),
        .DSP_A_B_DATA_INST(reg1),
        .Q(reg0),
        .clk_100MHz(clk_100MHz),
        .clk_200MHz(clk_200MHz),
        .reg1_valid_strobe(reg1_valid_strobe),
        .\result_reg_reg[31]_0 (result_reg),
        .\result_reg_reg[31]_1 (\result_reg_reg[0]_i_18_n_0 ),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(accelerator_inst_n_0));
  ps_pl_system_top_system_level_0_3_axi4_lite_slave axi_slave_inst
       (.D({accelerator_inst_n_1,accelerator_inst_n_2}),
        .Q(reg0),
        .arready_reg_0(s_axi_arready),
        .awready_reg_0(s_axi_awready),
        .\rdata_reg[31]_0 (result_reg),
        .\reg1_reg[15]_0 (reg1),
        .reg1_valid_strobe(reg1_valid_strobe),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
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
