// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Aug  3 18:46:40 2026
// Host        : DESKTOP-PB1BCUE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/PS_PL_accelerator/PS_PL_accelerator.srcs/sources_1/bd/ps_pl_system/ip/ps_pl_system_clk_wiz_0_0/ps_pl_system_clk_wiz_0_0_stub.v
// Design      : ps_pl_system_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ps_pl_system_clk_wiz_0_0(clk_out1, clk_out2, resetn, locked, clk_in1_p, 
  clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,resetn,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  output clk_out2;
  input resetn;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
