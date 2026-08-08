//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Aug  8 13:45:14 2026
//Host        : DESKTOP-PB1BCUE running 64-bit major release  (build 9200)
//Command     : generate_target ps_pl_system_wrapper.bd
//Design      : ps_pl_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ps_pl_system_wrapper
   (rxd,
    sys_clk_n,
    sys_clk_p,
    sys_rst_n,
    txd);
  input rxd;
  input sys_clk_n;
  input sys_clk_p;
  input sys_rst_n;
  output txd;

  wire rxd;
  wire sys_clk_n;
  wire sys_clk_p;
  wire sys_rst_n;
  wire txd;

  ps_pl_system ps_pl_system_i
       (.rxd(rxd),
        .sys_clk_n(sys_clk_n),
        .sys_clk_p(sys_clk_p),
        .sys_rst_n(sys_rst_n),
        .txd(txd));
endmodule
