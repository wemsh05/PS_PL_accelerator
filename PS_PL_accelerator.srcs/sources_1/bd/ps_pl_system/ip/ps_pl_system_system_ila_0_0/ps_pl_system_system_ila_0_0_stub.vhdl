-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Aug  8 13:47:50 2026
-- Host        : DESKTOP-PB1BCUE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/PS_PL_accelerator/PS_PL_accelerator.srcs/sources_1/bd/ps_pl_system/ip/ps_pl_system_system_ila_0_0/ps_pl_system_system_ila_0_0_stub.vhdl
-- Design      : ps_pl_system_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_pl_system_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end ps_pl_system_system_ila_0_0;

architecture stub of ps_pl_system_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_AXIS_tdata[31:0],SLOT_0_AXIS_tkeep[3:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_2fd3,Vivado 2020.1";
begin
end;
