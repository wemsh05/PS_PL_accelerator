// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Aug  8 13:46:39 2026
// Host        : DESKTOP-PB1BCUE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/PS_PL_accelerator/PS_PL_accelerator.srcs/sources_1/bd/ps_pl_system/ip/ps_pl_system_top_system_level_0_3/ps_pl_system_top_system_level_0_3_stub.v
// Design      : ps_pl_system_top_system_level_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_system_level,Vivado 2020.1" *)
module ps_pl_system_top_system_level_0_3(clk_100MHz, clk_200MHz, sys_rst_n, rxd, txd, 
  s_axi_aclk, s_axi_aresetn, s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, 
  s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, 
  s_axi_rready, s_axis_tdata, s_axis_tkeep, s_axis_tvalid, s_axis_tready, s_axis_tlast, 
  m_axis_tdata, m_axis_tkeep, m_axis_tvalid, m_axis_tready, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="clk_100MHz,clk_200MHz,sys_rst_n,rxd,txd,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[3:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[3:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,m_axis_tdata[31:0],m_axis_tkeep[3:0],m_axis_tvalid,m_axis_tready,m_axis_tlast" */;
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
endmodule
