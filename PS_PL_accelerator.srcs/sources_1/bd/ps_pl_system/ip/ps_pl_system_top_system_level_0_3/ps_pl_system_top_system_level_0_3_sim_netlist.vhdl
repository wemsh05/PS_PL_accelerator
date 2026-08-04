-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Aug  3 22:36:15 2026
-- Host        : DESKTOP-PB1BCUE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/PS_PL_accelerator/PS_PL_accelerator.srcs/sources_1/bd/ps_pl_system/ip/ps_pl_system_top_system_level_0_3/ps_pl_system_top_system_level_0_3_sim_netlist.vhdl
-- Design      : ps_pl_system_top_system_level_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu5ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_pl_system_top_system_level_0_3_async_fifo is
  port (
    rx_af_rd_en_reg0 : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_100MHz : in STD_LOGIC;
    \wr_bin_ptr_reg[3]_0\ : in STD_LOGIC;
    clk_200MHz : in STD_LOGIC;
    reg1_valid_strobe : in STD_LOGIC;
    mac_in_valid_reg : in STD_LOGIC;
    DSP_A_B_DATA_INST : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_async_fifo : entity is "async_fifo";
end ps_pl_system_top_system_level_0_3_async_fifo;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_async_fifo is
  signal mem_reg_0_15_0_13_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_0_13_i_2_n_0 : STD_LOGIC;
  signal rd_bin_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_bin_ptr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_gray_ptr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rd_gray_ptr[3]_i_2__0_n_0\ : STD_LOGIC;
  signal rd_gray_sync1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_gray_sync2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rx_af_rd_en_reg_i_2_n_0 : STD_LOGIC;
  signal wr_bin_next : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \wr_bin_next__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wr_bin_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal wr_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_gray_ptr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \wr_gray_ptr[3]_i_2_n_0\ : STD_LOGIC;
  signal wr_gray_sync1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_gray_sync2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_15_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_15_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_15_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_15_DOE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_15_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_15_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_15_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_13 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_13 : label is "accelerator_inst/rx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_13 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_13 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_13 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_13 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_14_15 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_14_15 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_15 : label is "accelerator_inst/rx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_15 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_14_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_15 : label is 15;
  attribute ram_offset of mem_reg_0_15_14_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_15 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_15 : label is 15;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_bin_ptr[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_bin_ptr[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_bin_ptr[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_gray_ptr[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_gray_ptr[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_gray_ptr[2]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_bin_ptr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_bin_ptr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_bin_ptr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_gray_ptr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_gray_ptr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_gray_ptr[2]_i_1\ : label is "soft_lutpair0";
begin
mem_reg_0_15_0_13: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => DSP_A_B_DATA_INST(1 downto 0),
      DIB(1 downto 0) => DSP_A_B_DATA_INST(3 downto 2),
      DIC(1 downto 0) => DSP_A_B_DATA_INST(5 downto 4),
      DID(1 downto 0) => DSP_A_B_DATA_INST(7 downto 6),
      DIE(1 downto 0) => DSP_A_B_DATA_INST(9 downto 8),
      DIF(1 downto 0) => DSP_A_B_DATA_INST(11 downto 10),
      DIG(1 downto 0) => DSP_A_B_DATA_INST(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data(1 downto 0),
      DOB(1 downto 0) => rd_data(3 downto 2),
      DOC(1 downto 0) => rd_data(5 downto 4),
      DOD(1 downto 0) => rd_data(7 downto 6),
      DOE(1 downto 0) => rd_data(9 downto 8),
      DOF(1 downto 0) => rd_data(11 downto 10),
      DOG(1 downto 0) => rd_data(13 downto 12),
      DOH(1 downto 0) => NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_100MHz,
      WE => mem_reg_0_15_0_13_i_1_n_0
    );
mem_reg_0_15_0_13_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAA28AAAAAAAA"
    )
        port map (
      I0 => reg1_valid_strobe,
      I1 => wr_gray_ptr(0),
      I2 => rd_gray_sync2(0),
      I3 => wr_gray_ptr(1),
      I4 => rd_gray_sync2(1),
      I5 => mem_reg_0_15_0_13_i_2_n_0,
      O => mem_reg_0_15_0_13_i_1_n_0
    );
mem_reg_0_15_0_13_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660000000000660"
    )
        port map (
      I0 => wr_gray_ptr(4),
      I1 => rd_gray_sync2(4),
      I2 => wr_gray_ptr(3),
      I3 => rd_gray_sync2(3),
      I4 => wr_gray_ptr(2),
      I5 => rd_gray_sync2(2),
      O => mem_reg_0_15_0_13_i_2_n_0
    );
mem_reg_0_15_14_15: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => DSP_A_B_DATA_INST(15 downto 14),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data(15 downto 14),
      DOB(1 downto 0) => NLW_mem_reg_0_15_14_15_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_mem_reg_0_15_14_15_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_15_14_15_DOD_UNCONNECTED(1 downto 0),
      DOE(1 downto 0) => NLW_mem_reg_0_15_14_15_DOE_UNCONNECTED(1 downto 0),
      DOF(1 downto 0) => NLW_mem_reg_0_15_14_15_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_mem_reg_0_15_14_15_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_mem_reg_0_15_14_15_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_100MHz,
      WE => mem_reg_0_15_0_13_i_1_n_0
    );
\rd_bin_ptr[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rd_gray_ptr[3]_i_2__0_n_0\,
      I1 => rd_bin_ptr_reg(0),
      O => rd_bin_next(0)
    );
\rd_bin_ptr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \rd_gray_ptr[3]_i_2__0_n_0\,
      I1 => rd_bin_ptr_reg(0),
      I2 => rd_bin_ptr_reg(1),
      O => rd_bin_next(1)
    );
\rd_bin_ptr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => rd_bin_ptr_reg(0),
      I1 => \rd_gray_ptr[3]_i_2__0_n_0\,
      I2 => rd_bin_ptr_reg(1),
      I3 => rd_bin_ptr_reg(2),
      O => rd_bin_next(2)
    );
\rd_bin_ptr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => rd_bin_ptr_reg(1),
      I1 => \rd_gray_ptr[3]_i_2__0_n_0\,
      I2 => rd_bin_ptr_reg(0),
      I3 => rd_bin_ptr_reg(2),
      I4 => rd_bin_ptr_reg(3),
      O => rd_bin_next(3)
    );
\rd_bin_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(0),
      Q => rd_bin_ptr_reg(0)
    );
\rd_bin_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(1),
      Q => rd_bin_ptr_reg(1)
    );
\rd_bin_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(2),
      Q => rd_bin_ptr_reg(2)
    );
\rd_bin_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(3),
      Q => rd_bin_ptr_reg(3)
    );
\rd_gray_ptr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => rd_bin_ptr_reg(1),
      I1 => rd_bin_ptr_reg(0),
      I2 => \rd_gray_ptr[3]_i_2__0_n_0\,
      O => rd_gray_next(0)
    );
\rd_gray_ptr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6656"
    )
        port map (
      I0 => rd_bin_ptr_reg(2),
      I1 => rd_bin_ptr_reg(1),
      I2 => rd_bin_ptr_reg(0),
      I3 => \rd_gray_ptr[3]_i_2__0_n_0\,
      O => rd_gray_next(1)
    );
\rd_gray_ptr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66566666"
    )
        port map (
      I0 => rd_bin_ptr_reg(3),
      I1 => rd_bin_ptr_reg(2),
      I2 => rd_bin_ptr_reg(1),
      I3 => \rd_gray_ptr[3]_i_2__0_n_0\,
      I4 => rd_bin_ptr_reg(0),
      O => rd_gray_next(2)
    );
\rd_gray_ptr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666566666666666"
    )
        port map (
      I0 => rd_gray_ptr(4),
      I1 => rd_bin_ptr_reg(3),
      I2 => rd_bin_ptr_reg(2),
      I3 => rd_bin_ptr_reg(0),
      I4 => \rd_gray_ptr[3]_i_2__0_n_0\,
      I5 => rd_bin_ptr_reg(1),
      O => rd_gray_next(3)
    );
\rd_gray_ptr[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90090000FFFFFFFF"
    )
        port map (
      I0 => rd_gray_ptr(0),
      I1 => wr_gray_sync2(0),
      I2 => rd_gray_ptr(1),
      I3 => wr_gray_sync2(1),
      I4 => rx_af_rd_en_reg_i_2_n_0,
      I5 => mac_in_valid_reg,
      O => \rd_gray_ptr[3]_i_2__0_n_0\
    );
\rd_gray_ptr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => rd_bin_ptr_reg(2),
      I1 => rd_bin_ptr_reg(0),
      I2 => \rd_gray_ptr[3]_i_2__0_n_0\,
      I3 => rd_bin_ptr_reg(1),
      I4 => rd_bin_ptr_reg(3),
      I5 => rd_gray_ptr(4),
      O => rd_bin_next(4)
    );
\rd_gray_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(0),
      Q => rd_gray_ptr(0)
    );
\rd_gray_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(1),
      Q => rd_gray_ptr(1)
    );
\rd_gray_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(2),
      Q => rd_gray_ptr(2)
    );
\rd_gray_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(3),
      Q => rd_gray_ptr(3)
    );
\rd_gray_ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(4),
      Q => rd_gray_ptr(4)
    );
\rd_gray_sync1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_ptr(0),
      Q => rd_gray_sync1(0)
    );
\rd_gray_sync1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_ptr(1),
      Q => rd_gray_sync1(1)
    );
\rd_gray_sync1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_ptr(2),
      Q => rd_gray_sync1(2)
    );
\rd_gray_sync1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_ptr(3),
      Q => rd_gray_sync1(3)
    );
\rd_gray_sync1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_ptr(4),
      Q => rd_gray_sync1(4)
    );
\rd_gray_sync2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_sync1(0),
      Q => rd_gray_sync2(0)
    );
\rd_gray_sync2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_sync1(1),
      Q => rd_gray_sync2(1)
    );
\rd_gray_sync2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_sync1(2),
      Q => rd_gray_sync2(2)
    );
\rd_gray_sync2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_sync1(3),
      Q => rd_gray_sync2(3)
    );
\rd_gray_sync2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_sync1(4),
      Q => rd_gray_sync2(4)
    );
rx_af_rd_en_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006FF6FFFF"
    )
        port map (
      I0 => rd_gray_ptr(0),
      I1 => wr_gray_sync2(0),
      I2 => rd_gray_ptr(1),
      I3 => wr_gray_sync2(1),
      I4 => rx_af_rd_en_reg_i_2_n_0,
      I5 => mac_in_valid_reg,
      O => rx_af_rd_en_reg0
    );
rx_af_rd_en_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_gray_sync2(4),
      I1 => rd_gray_ptr(4),
      I2 => wr_gray_sync2(3),
      I3 => rd_gray_ptr(3),
      I4 => rd_gray_ptr(2),
      I5 => wr_gray_sync2(2),
      O => rx_af_rd_en_reg_i_2_n_0
    );
\wr_bin_ptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wr_gray_ptr[3]_i_2_n_0\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      O => \wr_bin_next__0\(0)
    );
\wr_bin_ptr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \wr_gray_ptr[3]_i_2_n_0\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      O => \wr_bin_next__0\(1)
    );
\wr_bin_ptr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[0]\,
      I1 => \wr_gray_ptr[3]_i_2_n_0\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      I3 => \wr_bin_ptr_reg_n_0_[2]\,
      O => \wr_bin_next__0\(2)
    );
\wr_bin_ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => \wr_gray_ptr[3]_i_2_n_0\,
      I2 => \wr_bin_ptr_reg_n_0_[0]\,
      I3 => \wr_bin_ptr_reg_n_0_[2]\,
      I4 => \wr_bin_ptr_reg_n_0_[3]\,
      O => \wr_bin_next__0\(3)
    );
\wr_bin_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(0),
      Q => \wr_bin_ptr_reg_n_0_[0]\
    );
\wr_bin_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(1),
      Q => \wr_bin_ptr_reg_n_0_[1]\
    );
\wr_bin_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(2),
      Q => \wr_bin_ptr_reg_n_0_[2]\
    );
\wr_bin_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(3),
      Q => \wr_bin_ptr_reg_n_0_[3]\
    );
\wr_gray_ptr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_gray_ptr[3]_i_2_n_0\,
      O => wr_gray_next(0)
    );
\wr_gray_ptr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6656"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \wr_bin_ptr_reg_n_0_[1]\,
      I2 => \wr_bin_ptr_reg_n_0_[0]\,
      I3 => \wr_gray_ptr[3]_i_2_n_0\,
      O => wr_gray_next(1)
    );
\wr_gray_ptr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66566666"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[3]\,
      I1 => \wr_bin_ptr_reg_n_0_[2]\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      I3 => \wr_gray_ptr[3]_i_2_n_0\,
      I4 => \wr_bin_ptr_reg_n_0_[0]\,
      O => wr_gray_next(2)
    );
\wr_gray_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666566666666666"
    )
        port map (
      I0 => wr_gray_ptr(4),
      I1 => \wr_bin_ptr_reg_n_0_[3]\,
      I2 => \wr_bin_ptr_reg_n_0_[2]\,
      I3 => \wr_bin_ptr_reg_n_0_[0]\,
      I4 => \wr_gray_ptr[3]_i_2_n_0\,
      I5 => \wr_bin_ptr_reg_n_0_[1]\,
      O => wr_gray_next(3)
    );
\wr_gray_ptr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90090000FFFFFFFF"
    )
        port map (
      I0 => wr_gray_ptr(0),
      I1 => rd_gray_sync2(0),
      I2 => wr_gray_ptr(1),
      I3 => rd_gray_sync2(1),
      I4 => mem_reg_0_15_0_13_i_2_n_0,
      I5 => reg1_valid_strobe,
      O => \wr_gray_ptr[3]_i_2_n_0\
    );
\wr_gray_ptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_gray_ptr[3]_i_2_n_0\,
      I3 => \wr_bin_ptr_reg_n_0_[1]\,
      I4 => \wr_bin_ptr_reg_n_0_[3]\,
      I5 => wr_gray_ptr(4),
      O => wr_bin_next(4)
    );
\wr_gray_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(0),
      Q => wr_gray_ptr(0)
    );
\wr_gray_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(1),
      Q => wr_gray_ptr(1)
    );
\wr_gray_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(2),
      Q => wr_gray_ptr(2)
    );
\wr_gray_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(3),
      Q => wr_gray_ptr(3)
    );
\wr_gray_ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_bin_next(4),
      Q => wr_gray_ptr(4)
    );
\wr_gray_sync1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_ptr(0),
      Q => wr_gray_sync1(0)
    );
\wr_gray_sync1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_ptr(1),
      Q => wr_gray_sync1(1)
    );
\wr_gray_sync1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_ptr(2),
      Q => wr_gray_sync1(2)
    );
\wr_gray_sync1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_ptr(3),
      Q => wr_gray_sync1(3)
    );
\wr_gray_sync1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_ptr(4),
      Q => wr_gray_sync1(4)
    );
\wr_gray_sync2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_sync1(0),
      Q => wr_gray_sync2(0)
    );
\wr_gray_sync2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_sync1(1),
      Q => wr_gray_sync2(1)
    );
\wr_gray_sync2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_sync1(2),
      Q => wr_gray_sync2(2)
    );
\wr_gray_sync2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_sync1(3),
      Q => wr_gray_sync2(3)
    );
\wr_gray_sync2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_sync1(4),
      Q => wr_gray_sync2(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_pl_system_top_system_level_0_3_async_fifo_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_curr_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_200MHz : in STD_LOGIC;
    \wr_bin_ptr_reg[3]_0\ : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIG : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[29]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[29]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg1_valid_strobe : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mac_out_valid : in STD_LOGIC;
    tx_af_rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_async_fifo_0 : entity is "async_fifo";
end ps_pl_system_top_system_level_0_3_async_fifo_0;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_async_fifo_0 is
  signal \^fsm_onehot_curr_state_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mem_reg_0_15_0_13_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_0_13_i_2__0_n_0\ : STD_LOGIC;
  signal rd_bin_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_bin_ptr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_gray_ptr[3]_i_2_n_0\ : STD_LOGIC;
  signal \rd_gray_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_gray_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_gray_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_gray_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_gray_ptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_gray_sync1_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_gray_sync1_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_gray_sync1_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_gray_sync1_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_gray_sync1_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_gray_sync2_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_gray_sync2_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_gray_sync2_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_gray_sync2_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_gray_sync2_reg_n_0_[4]\ : STD_LOGIC;
  signal \result_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal wr_bin_next : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \wr_bin_next__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wr_bin_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal wr_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wr_gray_ptr[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \wr_gray_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_gray_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_gray_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_gray_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_gray_ptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_gray_sync1_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_gray_sync1_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_gray_sync1_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_gray_sync1_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_gray_sync1_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_gray_sync2_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_gray_sync2_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_gray_sync2_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_gray_sync2_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_gray_sync2_reg_n_0_[4]\ : STD_LOGIC;
  signal NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_31_DOE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_31_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_31_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_31_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_13 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_13 : label is "accelerator_inst/tx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_13 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_13 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_13 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_13 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_14_27 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_14_27 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_27 : label is "accelerator_inst/tx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_27 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_14_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_27 : label is 15;
  attribute ram_offset of mem_reg_0_15_14_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_27 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_28_31 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_28_31 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_31 : label is "accelerator_inst/tx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_31 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_28_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_31 : label is 15;
  attribute ram_offset of mem_reg_0_15_28_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_31 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_31 : label is 31;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_bin_ptr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rd_bin_ptr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rd_bin_ptr[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_gray_ptr[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rd_gray_ptr[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rd_gray_ptr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_bin_ptr[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_bin_ptr[2]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_bin_ptr[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_gray_ptr[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_gray_ptr[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_gray_ptr[2]_i_1__0\ : label is "soft_lutpair6";
begin
  \FSM_onehot_curr_state_reg[1]\(0) <= \^fsm_onehot_curr_state_reg[1]\(0);
\FSM_onehot_curr_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => \^fsm_onehot_curr_state_reg[1]\(0),
      I1 => reg1_valid_strobe,
      I2 => Q(0),
      I3 => Q(2),
      O => E(0)
    );
mem_reg_0_15_0_13: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      DID(1 downto 0) => DID(1 downto 0),
      DIE(1 downto 0) => DIE(1 downto 0),
      DIF(1 downto 0) => DIF(1 downto 0),
      DIG(1 downto 0) => DIG(1 downto 0),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => D(1 downto 0),
      DOB(1 downto 0) => D(3 downto 2),
      DOC(1 downto 0) => D(5 downto 4),
      DOD(1 downto 0) => D(7 downto 6),
      DOE(1 downto 0) => D(9 downto 8),
      DOF(1 downto 0) => D(11 downto 10),
      DOG(1 downto 0) => D(13 downto 12),
      DOH(1 downto 0) => NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_200MHz,
      WE => \mem_reg_0_15_0_13_i_1__0_n_0\
    );
\mem_reg_0_15_0_13_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAA28AAAAAAAA"
    )
        port map (
      I0 => mac_out_valid,
      I1 => \wr_gray_ptr_reg_n_0_[0]\,
      I2 => \rd_gray_sync2_reg_n_0_[0]\,
      I3 => \wr_gray_ptr_reg_n_0_[1]\,
      I4 => \rd_gray_sync2_reg_n_0_[1]\,
      I5 => \mem_reg_0_15_0_13_i_2__0_n_0\,
      O => \mem_reg_0_15_0_13_i_1__0_n_0\
    );
\mem_reg_0_15_0_13_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660000000000660"
    )
        port map (
      I0 => \wr_gray_ptr_reg_n_0_[4]\,
      I1 => \rd_gray_sync2_reg_n_0_[4]\,
      I2 => \wr_gray_ptr_reg_n_0_[3]\,
      I3 => \rd_gray_sync2_reg_n_0_[3]\,
      I4 => \wr_gray_ptr_reg_n_0_[2]\,
      I5 => \rd_gray_sync2_reg_n_0_[2]\,
      O => \mem_reg_0_15_0_13_i_2__0_n_0\
    );
mem_reg_0_15_14_27: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => \result_reg_reg[15]\(1 downto 0),
      DIB(1 downto 0) => \result_reg_reg[15]_0\(1 downto 0),
      DIC(1 downto 0) => \result_reg_reg[15]_1\(1 downto 0),
      DID(1 downto 0) => \result_reg_reg[15]_2\(1 downto 0),
      DIE(1 downto 0) => \result_reg_reg[15]_3\(1 downto 0),
      DIF(1 downto 0) => \result_reg_reg[15]_4\(1 downto 0),
      DIG(1 downto 0) => \result_reg_reg[15]_5\(1 downto 0),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => D(15 downto 14),
      DOB(1 downto 0) => D(17 downto 16),
      DOC(1 downto 0) => D(19 downto 18),
      DOD(1 downto 0) => D(21 downto 20),
      DOE(1 downto 0) => D(23 downto 22),
      DOF(1 downto 0) => D(25 downto 24),
      DOG(1 downto 0) => D(27 downto 26),
      DOH(1 downto 0) => NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_200MHz,
      WE => \mem_reg_0_15_0_13_i_1__0_n_0\
    );
mem_reg_0_15_28_31: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => \result_reg_reg[29]\(1 downto 0),
      DIB(1 downto 0) => \result_reg_reg[29]_0\(1 downto 0),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => D(29 downto 28),
      DOB(1 downto 0) => D(31 downto 30),
      DOC(1 downto 0) => NLW_mem_reg_0_15_28_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_15_28_31_DOD_UNCONNECTED(1 downto 0),
      DOE(1 downto 0) => NLW_mem_reg_0_15_28_31_DOE_UNCONNECTED(1 downto 0),
      DOF(1 downto 0) => NLW_mem_reg_0_15_28_31_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_mem_reg_0_15_28_31_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_mem_reg_0_15_28_31_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_200MHz,
      WE => \mem_reg_0_15_0_13_i_1__0_n_0\
    );
\rd_bin_ptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rd_gray_ptr[3]_i_2_n_0\,
      I1 => rd_bin_ptr_reg(0),
      O => rd_bin_next(0)
    );
\rd_bin_ptr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \rd_gray_ptr[3]_i_2_n_0\,
      I1 => rd_bin_ptr_reg(0),
      I2 => rd_bin_ptr_reg(1),
      O => rd_bin_next(1)
    );
\rd_bin_ptr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => rd_bin_ptr_reg(0),
      I1 => \rd_gray_ptr[3]_i_2_n_0\,
      I2 => rd_bin_ptr_reg(1),
      I3 => rd_bin_ptr_reg(2),
      O => rd_bin_next(2)
    );
\rd_bin_ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => rd_bin_ptr_reg(1),
      I1 => \rd_gray_ptr[3]_i_2_n_0\,
      I2 => rd_bin_ptr_reg(0),
      I3 => rd_bin_ptr_reg(2),
      I4 => rd_bin_ptr_reg(3),
      O => rd_bin_next(3)
    );
\rd_bin_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(0),
      Q => rd_bin_ptr_reg(0)
    );
\rd_bin_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(1),
      Q => rd_bin_ptr_reg(1)
    );
\rd_bin_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(2),
      Q => rd_bin_ptr_reg(2)
    );
\rd_bin_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(3),
      Q => rd_bin_ptr_reg(3)
    );
\rd_gray_ptr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => rd_bin_ptr_reg(1),
      I1 => rd_bin_ptr_reg(0),
      I2 => \rd_gray_ptr[3]_i_2_n_0\,
      O => rd_gray_next(0)
    );
\rd_gray_ptr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6656"
    )
        port map (
      I0 => rd_bin_ptr_reg(2),
      I1 => rd_bin_ptr_reg(1),
      I2 => rd_bin_ptr_reg(0),
      I3 => \rd_gray_ptr[3]_i_2_n_0\,
      O => rd_gray_next(1)
    );
\rd_gray_ptr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66566666"
    )
        port map (
      I0 => rd_bin_ptr_reg(3),
      I1 => rd_bin_ptr_reg(2),
      I2 => rd_bin_ptr_reg(1),
      I3 => \rd_gray_ptr[3]_i_2_n_0\,
      I4 => rd_bin_ptr_reg(0),
      O => rd_gray_next(2)
    );
\rd_gray_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666566666666666"
    )
        port map (
      I0 => \rd_gray_ptr_reg_n_0_[4]\,
      I1 => rd_bin_ptr_reg(3),
      I2 => rd_bin_ptr_reg(2),
      I3 => rd_bin_ptr_reg(0),
      I4 => \rd_gray_ptr[3]_i_2_n_0\,
      I5 => rd_bin_ptr_reg(1),
      O => rd_gray_next(3)
    );
\rd_gray_ptr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90090000FFFFFFFF"
    )
        port map (
      I0 => \rd_gray_ptr_reg_n_0_[0]\,
      I1 => \wr_gray_sync2_reg_n_0_[0]\,
      I2 => \rd_gray_ptr_reg_n_0_[1]\,
      I3 => \wr_gray_sync2_reg_n_0_[1]\,
      I4 => \result_reg[31]_i_2_n_0\,
      I5 => tx_af_rd_en,
      O => \rd_gray_ptr[3]_i_2_n_0\
    );
\rd_gray_ptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => rd_bin_ptr_reg(2),
      I1 => rd_bin_ptr_reg(0),
      I2 => \rd_gray_ptr[3]_i_2_n_0\,
      I3 => rd_bin_ptr_reg(1),
      I4 => rd_bin_ptr_reg(3),
      I5 => \rd_gray_ptr_reg_n_0_[4]\,
      O => rd_bin_next(4)
    );
\rd_gray_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(0),
      Q => \rd_gray_ptr_reg_n_0_[0]\
    );
\rd_gray_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(1),
      Q => \rd_gray_ptr_reg_n_0_[1]\
    );
\rd_gray_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(2),
      Q => \rd_gray_ptr_reg_n_0_[2]\
    );
\rd_gray_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_gray_next(3),
      Q => \rd_gray_ptr_reg_n_0_[3]\
    );
\rd_gray_ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(4),
      Q => \rd_gray_ptr_reg_n_0_[4]\
    );
\rd_gray_sync1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_ptr_reg_n_0_[0]\,
      Q => \rd_gray_sync1_reg_n_0_[0]\
    );
\rd_gray_sync1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_ptr_reg_n_0_[1]\,
      Q => \rd_gray_sync1_reg_n_0_[1]\
    );
\rd_gray_sync1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_ptr_reg_n_0_[2]\,
      Q => \rd_gray_sync1_reg_n_0_[2]\
    );
\rd_gray_sync1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_ptr_reg_n_0_[3]\,
      Q => \rd_gray_sync1_reg_n_0_[3]\
    );
\rd_gray_sync1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_ptr_reg_n_0_[4]\,
      Q => \rd_gray_sync1_reg_n_0_[4]\
    );
\rd_gray_sync2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_sync1_reg_n_0_[0]\,
      Q => \rd_gray_sync2_reg_n_0_[0]\
    );
\rd_gray_sync2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_sync1_reg_n_0_[1]\,
      Q => \rd_gray_sync2_reg_n_0_[1]\
    );
\rd_gray_sync2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_sync1_reg_n_0_[2]\,
      Q => \rd_gray_sync2_reg_n_0_[2]\
    );
\rd_gray_sync2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_sync1_reg_n_0_[3]\,
      Q => \rd_gray_sync2_reg_n_0_[3]\
    );
\rd_gray_sync2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \rd_gray_sync1_reg_n_0_[4]\,
      Q => \rd_gray_sync2_reg_n_0_[4]\
    );
\result_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAA28AAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \rd_gray_ptr_reg_n_0_[0]\,
      I2 => \wr_gray_sync2_reg_n_0_[0]\,
      I3 => \rd_gray_ptr_reg_n_0_[1]\,
      I4 => \wr_gray_sync2_reg_n_0_[1]\,
      I5 => \result_reg[31]_i_2_n_0\,
      O => \^fsm_onehot_curr_state_reg[1]\(0)
    );
\result_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_gray_sync2_reg_n_0_[4]\,
      I1 => \rd_gray_ptr_reg_n_0_[4]\,
      I2 => \wr_gray_sync2_reg_n_0_[3]\,
      I3 => \rd_gray_ptr_reg_n_0_[3]\,
      I4 => \rd_gray_ptr_reg_n_0_[2]\,
      I5 => \wr_gray_sync2_reg_n_0_[2]\,
      O => \result_reg[31]_i_2_n_0\
    );
\wr_bin_ptr[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wr_gray_ptr[3]_i_2__0_n_0\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      O => \wr_bin_next__0\(0)
    );
\wr_bin_ptr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \wr_gray_ptr[3]_i_2__0_n_0\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      O => \wr_bin_next__0\(1)
    );
\wr_bin_ptr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[0]\,
      I1 => \wr_gray_ptr[3]_i_2__0_n_0\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      I3 => \wr_bin_ptr_reg_n_0_[2]\,
      O => \wr_bin_next__0\(2)
    );
\wr_bin_ptr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => \wr_gray_ptr[3]_i_2__0_n_0\,
      I2 => \wr_bin_ptr_reg_n_0_[0]\,
      I3 => \wr_bin_ptr_reg_n_0_[2]\,
      I4 => \wr_bin_ptr_reg_n_0_[3]\,
      O => \wr_bin_next__0\(3)
    );
\wr_bin_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(0),
      Q => \wr_bin_ptr_reg_n_0_[0]\
    );
\wr_bin_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(1),
      Q => \wr_bin_ptr_reg_n_0_[1]\
    );
\wr_bin_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(2),
      Q => \wr_bin_ptr_reg_n_0_[2]\
    );
\wr_bin_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_bin_next__0\(3),
      Q => \wr_bin_ptr_reg_n_0_[3]\
    );
\wr_gray_ptr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_gray_ptr[3]_i_2__0_n_0\,
      O => wr_gray_next(0)
    );
\wr_gray_ptr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6656"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \wr_bin_ptr_reg_n_0_[1]\,
      I2 => \wr_bin_ptr_reg_n_0_[0]\,
      I3 => \wr_gray_ptr[3]_i_2__0_n_0\,
      O => wr_gray_next(1)
    );
\wr_gray_ptr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66566666"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[3]\,
      I1 => \wr_bin_ptr_reg_n_0_[2]\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      I3 => \wr_gray_ptr[3]_i_2__0_n_0\,
      I4 => \wr_bin_ptr_reg_n_0_[0]\,
      O => wr_gray_next(2)
    );
\wr_gray_ptr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666566666666666"
    )
        port map (
      I0 => \wr_gray_ptr_reg_n_0_[4]\,
      I1 => \wr_bin_ptr_reg_n_0_[3]\,
      I2 => \wr_bin_ptr_reg_n_0_[2]\,
      I3 => \wr_bin_ptr_reg_n_0_[0]\,
      I4 => \wr_gray_ptr[3]_i_2__0_n_0\,
      I5 => \wr_bin_ptr_reg_n_0_[1]\,
      O => wr_gray_next(3)
    );
\wr_gray_ptr[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90090000FFFFFFFF"
    )
        port map (
      I0 => \wr_gray_ptr_reg_n_0_[0]\,
      I1 => \rd_gray_sync2_reg_n_0_[0]\,
      I2 => \wr_gray_ptr_reg_n_0_[1]\,
      I3 => \rd_gray_sync2_reg_n_0_[1]\,
      I4 => \mem_reg_0_15_0_13_i_2__0_n_0\,
      I5 => mac_out_valid,
      O => \wr_gray_ptr[3]_i_2__0_n_0\
    );
\wr_gray_ptr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_gray_ptr[3]_i_2__0_n_0\,
      I3 => \wr_bin_ptr_reg_n_0_[1]\,
      I4 => \wr_bin_ptr_reg_n_0_[3]\,
      I5 => \wr_gray_ptr_reg_n_0_[4]\,
      O => wr_bin_next(4)
    );
\wr_gray_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(0),
      Q => \wr_gray_ptr_reg_n_0_[0]\
    );
\wr_gray_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(1),
      Q => \wr_gray_ptr_reg_n_0_[1]\
    );
\wr_gray_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(2),
      Q => \wr_gray_ptr_reg_n_0_[2]\
    );
\wr_gray_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_gray_next(3),
      Q => \wr_gray_ptr_reg_n_0_[3]\
    );
\wr_gray_ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => wr_bin_next(4),
      Q => \wr_gray_ptr_reg_n_0_[4]\
    );
\wr_gray_sync1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_ptr_reg_n_0_[0]\,
      Q => \wr_gray_sync1_reg_n_0_[0]\
    );
\wr_gray_sync1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_ptr_reg_n_0_[1]\,
      Q => \wr_gray_sync1_reg_n_0_[1]\
    );
\wr_gray_sync1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_ptr_reg_n_0_[2]\,
      Q => \wr_gray_sync1_reg_n_0_[2]\
    );
\wr_gray_sync1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_ptr_reg_n_0_[3]\,
      Q => \wr_gray_sync1_reg_n_0_[3]\
    );
\wr_gray_sync1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_ptr_reg_n_0_[4]\,
      Q => \wr_gray_sync1_reg_n_0_[4]\
    );
\wr_gray_sync2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_sync1_reg_n_0_[0]\,
      Q => \wr_gray_sync2_reg_n_0_[0]\
    );
\wr_gray_sync2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_sync1_reg_n_0_[1]\,
      Q => \wr_gray_sync2_reg_n_0_[1]\
    );
\wr_gray_sync2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_sync1_reg_n_0_[2]\,
      Q => \wr_gray_sync2_reg_n_0_[2]\
    );
\wr_gray_sync2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_sync1_reg_n_0_[3]\,
      Q => \wr_gray_sync2_reg_n_0_[3]\
    );
\wr_gray_sync2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => \wr_gray_sync1_reg_n_0_[4]\,
      Q => \wr_gray_sync2_reg_n_0_[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_pl_system_top_system_level_0_3_axi4_lite_slave is
  port (
    awready_reg_0 : out STD_LOGIC;
    arready_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    reg1_valid_strobe : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_axi4_lite_slave : entity is "axi4_lite_slave";
end ps_pl_system_top_system_level_0_3_axi4_lite_slave;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_axi4_lite_slave is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal arready0 : STD_LOGIC;
  signal \^arready_reg_0\ : STD_LOGIC;
  signal awready0 : STD_LOGIC;
  signal awready_i_2_n_0 : STD_LOGIC;
  signal \^awready_reg_0\ : STD_LOGIC;
  signal bvalid_i_1_n_0 : STD_LOGIC;
  signal \rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal reg0 : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \^reg1_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rvalid00_out__0\ : STD_LOGIC;
  signal rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of awready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of bvalid_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of rvalid_i_1 : label is "soft_lutpair13";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  arready_reg_0 <= \^arready_reg_0\;
  awready_reg_0 <= \^awready_reg_0\;
  \reg1_reg[15]_0\(15 downto 0) <= \^reg1_reg[15]_0\(15 downto 0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\FSM_onehot_curr_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_wvalid,
      I5 => \^awready_reg_0\,
      O => reg1_valid_strobe
    );
arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^arready_reg_0\,
      O => arready0
    );
arready_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => awready_i_2_n_0,
      D => arready0,
      Q => \^arready_reg_0\
    );
awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^awready_reg_0\,
      O => awready0
    );
awready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => awready_i_2_n_0
    );
awready_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => awready_i_2_n_0,
      D => awready0,
      Q => \^awready_reg_0\
    );
bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555C000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \^awready_reg_0\,
      I4 => \^s_axi_bvalid\,
      O => bvalid_i_1_n_0
    );
bvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => awready_i_2_n_0,
      D => bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^reg1_reg[15]_0\(10),
      I2 => \rdata_reg[31]_0\(8),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[10]_i_1_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^reg1_reg[15]_0\(11),
      I2 => \rdata_reg[31]_0\(9),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[11]_i_1_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^reg1_reg[15]_0\(12),
      I2 => \rdata_reg[31]_0\(10),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[12]_i_1_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^reg1_reg[15]_0\(13),
      I2 => \rdata_reg[31]_0\(11),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[13]_i_1_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^reg1_reg[15]_0\(14),
      I2 => \rdata_reg[31]_0\(12),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[14]_i_1_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^reg1_reg[15]_0\(15),
      I2 => \rdata_reg[31]_0\(13),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[15]_i_1_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(16),
      I1 => reg1(16),
      I2 => \rdata_reg[31]_0\(14),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[16]_i_1_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(17),
      I1 => reg1(17),
      I2 => \rdata_reg[31]_0\(15),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[17]_i_1_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(18),
      I1 => reg1(18),
      I2 => \rdata_reg[31]_0\(16),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[18]_i_1_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(19),
      I1 => reg1(19),
      I2 => \rdata_reg[31]_0\(17),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[19]_i_1_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(20),
      I1 => reg1(20),
      I2 => \rdata_reg[31]_0\(18),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[20]_i_1_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(21),
      I1 => reg1(21),
      I2 => \rdata_reg[31]_0\(19),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[21]_i_1_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(22),
      I1 => reg1(22),
      I2 => \rdata_reg[31]_0\(20),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[22]_i_1_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(23),
      I1 => reg1(23),
      I2 => \rdata_reg[31]_0\(21),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[23]_i_1_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(24),
      I1 => reg1(24),
      I2 => \rdata_reg[31]_0\(22),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[24]_i_1_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(25),
      I1 => reg1(25),
      I2 => \rdata_reg[31]_0\(23),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[25]_i_1_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(26),
      I1 => reg1(26),
      I2 => \rdata_reg[31]_0\(24),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[26]_i_1_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(27),
      I1 => reg1(27),
      I2 => \rdata_reg[31]_0\(25),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[27]_i_1_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(28),
      I1 => reg1(28),
      I2 => \rdata_reg[31]_0\(26),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[28]_i_1_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(29),
      I1 => reg1(29),
      I2 => \rdata_reg[31]_0\(27),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[29]_i_1_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^reg1_reg[15]_0\(2),
      I2 => \rdata_reg[31]_0\(0),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(30),
      I1 => reg1(30),
      I2 => \rdata_reg[31]_0\(28),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[30]_i_1_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => reg0(31),
      I1 => reg1(31),
      I2 => \rdata_reg[31]_0\(29),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^reg1_reg[15]_0\(3),
      I2 => \rdata_reg[31]_0\(1),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^reg1_reg[15]_0\(4),
      I2 => \rdata_reg[31]_0\(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[4]_i_1_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^reg1_reg[15]_0\(5),
      I2 => \rdata_reg[31]_0\(3),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[5]_i_1_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^reg1_reg[15]_0\(6),
      I2 => \rdata_reg[31]_0\(4),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[6]_i_1_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^reg1_reg[15]_0\(7),
      I2 => \rdata_reg[31]_0\(5),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^reg1_reg[15]_0\(8),
      I2 => \rdata_reg[31]_0\(6),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[8]_i_1_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^reg1_reg[15]_0\(9),
      I2 => \rdata_reg[31]_0\(7),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[9]_i_1_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => D(0),
      Q => s_axi_rdata(0)
    );
\rdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10)
    );
\rdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11)
    );
\rdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12)
    );
\rdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13)
    );
\rdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14)
    );
\rdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15)
    );
\rdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16)
    );
\rdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17)
    );
\rdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18)
    );
\rdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19)
    );
\rdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => D(1),
      Q => s_axi_rdata(1)
    );
\rdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20)
    );
\rdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21)
    );
\rdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22)
    );
\rdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23)
    );
\rdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24)
    );
\rdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25)
    );
\rdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26)
    );
\rdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27)
    );
\rdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28)
    );
\rdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29)
    );
\rdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2)
    );
\rdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(30)
    );
\rdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[31]_i_1_n_0\,
      Q => s_axi_rdata(31)
    );
\rdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3)
    );
\rdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4)
    );
\rdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5)
    );
\rdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6)
    );
\rdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7)
    );
\rdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8)
    );
\rdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid00_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9)
    );
\reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(1),
      O => \reg0[15]_i_1_n_0\
    );
\reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(2),
      O => \reg0[23]_i_1_n_0\
    );
\reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(3),
      O => \reg0[31]_i_1_n_0\
    );
\reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(0),
      O => \reg0[7]_i_1_n_0\
    );
\reg0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => \^q\(0)
    );
\reg0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => \^q\(10)
    );
\reg0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => \^q\(11)
    );
\reg0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => \^q\(12)
    );
\reg0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => \^q\(13)
    );
\reg0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => \^q\(14)
    );
\reg0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => \^q\(15)
    );
\reg0_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(16),
      Q => reg0(16)
    );
\reg0_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(17),
      Q => reg0(17)
    );
\reg0_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(18),
      Q => reg0(18)
    );
\reg0_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(19),
      Q => reg0(19)
    );
\reg0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => \^q\(1)
    );
\reg0_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(20),
      Q => reg0(20)
    );
\reg0_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(21),
      Q => reg0(21)
    );
\reg0_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(22),
      Q => reg0(22)
    );
\reg0_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(23),
      Q => reg0(23)
    );
\reg0_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(24),
      Q => reg0(24)
    );
\reg0_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(25),
      Q => reg0(25)
    );
\reg0_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(26),
      Q => reg0(26)
    );
\reg0_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(27),
      Q => reg0(27)
    );
\reg0_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(28),
      Q => reg0(28)
    );
\reg0_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(29),
      Q => reg0(29)
    );
\reg0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => \^q\(2)
    );
\reg0_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(30),
      Q => reg0(30)
    );
\reg0_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(31),
      Q => reg0(31)
    );
\reg0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => \^q\(3)
    );
\reg0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => \^q\(4)
    );
\reg0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => \^q\(5)
    );
\reg0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => \^q\(6)
    );
\reg0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => \^q\(7)
    );
\reg0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => \^q\(8)
    );
\reg0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => \^q\(9)
    );
\reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(1),
      O => \reg1[15]_i_1_n_0\
    );
\reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(2),
      O => \reg1[23]_i_1_n_0\
    );
\reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(3),
      O => \reg1[31]_i_1_n_0\
    );
\reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wstrb(0),
      O => \reg1[7]_i_1_n_0\
    );
\reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => \^reg1_reg[15]_0\(0)
    );
\reg1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => \^reg1_reg[15]_0\(10)
    );
\reg1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => \^reg1_reg[15]_0\(11)
    );
\reg1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => \^reg1_reg[15]_0\(12)
    );
\reg1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => \^reg1_reg[15]_0\(13)
    );
\reg1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => \^reg1_reg[15]_0\(14)
    );
\reg1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => \^reg1_reg[15]_0\(15)
    );
\reg1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(16),
      Q => reg1(16)
    );
\reg1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(17),
      Q => reg1(17)
    );
\reg1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(18),
      Q => reg1(18)
    );
\reg1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(19),
      Q => reg1(19)
    );
\reg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => \^reg1_reg[15]_0\(1)
    );
\reg1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(20),
      Q => reg1(20)
    );
\reg1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(21),
      Q => reg1(21)
    );
\reg1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(22),
      Q => reg1(22)
    );
\reg1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(23),
      Q => reg1(23)
    );
\reg1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(24),
      Q => reg1(24)
    );
\reg1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(25),
      Q => reg1(25)
    );
\reg1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(26),
      Q => reg1(26)
    );
\reg1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(27),
      Q => reg1(27)
    );
\reg1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(28),
      Q => reg1(28)
    );
\reg1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(29),
      Q => reg1(29)
    );
\reg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => \^reg1_reg[15]_0\(2)
    );
\reg1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(30),
      Q => reg1(30)
    );
\reg1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(31),
      Q => reg1(31)
    );
\reg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => \^reg1_reg[15]_0\(3)
    );
\reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => \^reg1_reg[15]_0\(4)
    );
\reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => \^reg1_reg[15]_0\(5)
    );
\reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => \^reg1_reg[15]_0\(6)
    );
\reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => \^reg1_reg[15]_0\(7)
    );
\reg1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => \^reg1_reg[15]_0\(8)
    );
\reg1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => \^reg1_reg[15]_0\(9)
    );
rvalid00_out: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid\,
      I2 => \^arready_reg_0\,
      O => \rvalid00_out__0\
    );
rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^arready_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => rvalid_i_1_n_0
    );
rvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => awready_i_2_n_0,
      D => rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_pl_system_top_system_level_0_3_pipelined_mac is
  port (
    mac_out_valid : out STD_LOGIC;
    DIA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DIE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DIF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DIG : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[17]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[19]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[21]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[23]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[25]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[27]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[29]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_200MHz : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mac_in_valid_reg : in STD_LOGIC;
    \result_reg_reg[0]_0\ : in STD_LOGIC;
    \result_reg_reg[31]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_pipelined_mac : entity is "pipelined_mac";
end ps_pl_system_top_system_level_0_3_pipelined_mac;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_pipelined_mac is
  signal \^dia\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dib\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dic\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^did\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^die\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dif\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dig\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \in\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal mult_reg0_n_100 : STD_LOGIC;
  signal mult_reg0_n_101 : STD_LOGIC;
  signal mult_reg0_n_102 : STD_LOGIC;
  signal mult_reg0_n_103 : STD_LOGIC;
  signal mult_reg0_n_104 : STD_LOGIC;
  signal mult_reg0_n_105 : STD_LOGIC;
  signal mult_reg0_n_74 : STD_LOGIC;
  signal mult_reg0_n_75 : STD_LOGIC;
  signal mult_reg0_n_76 : STD_LOGIC;
  signal mult_reg0_n_77 : STD_LOGIC;
  signal mult_reg0_n_78 : STD_LOGIC;
  signal mult_reg0_n_79 : STD_LOGIC;
  signal mult_reg0_n_80 : STD_LOGIC;
  signal mult_reg0_n_81 : STD_LOGIC;
  signal mult_reg0_n_82 : STD_LOGIC;
  signal mult_reg0_n_83 : STD_LOGIC;
  signal mult_reg0_n_84 : STD_LOGIC;
  signal mult_reg0_n_85 : STD_LOGIC;
  signal mult_reg0_n_86 : STD_LOGIC;
  signal mult_reg0_n_87 : STD_LOGIC;
  signal mult_reg0_n_88 : STD_LOGIC;
  signal mult_reg0_n_89 : STD_LOGIC;
  signal mult_reg0_n_90 : STD_LOGIC;
  signal mult_reg0_n_91 : STD_LOGIC;
  signal mult_reg0_n_92 : STD_LOGIC;
  signal mult_reg0_n_93 : STD_LOGIC;
  signal mult_reg0_n_94 : STD_LOGIC;
  signal mult_reg0_n_95 : STD_LOGIC;
  signal mult_reg0_n_96 : STD_LOGIC;
  signal mult_reg0_n_97 : STD_LOGIC;
  signal mult_reg0_n_98 : STD_LOGIC;
  signal mult_reg0_n_99 : STD_LOGIC;
  signal \result_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \result_reg_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \^result_reg_reg[15]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \result_reg_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \result_reg_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \^result_reg_reg[17]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^result_reg_reg[19]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^result_reg_reg[21]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^result_reg_reg[23]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \result_reg_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \result_reg_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \^result_reg_reg[25]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^result_reg_reg[27]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^result_reg_reg[29]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^result_reg_reg[31]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \result_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \result_reg_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal valid_stage1 : STD_LOGIC;
  signal NLW_mult_reg0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mult_reg0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult_reg0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mult_reg0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_mult_reg0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mult_reg0_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_result_reg_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of mult_reg0 : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mult_reg0 : label is "{SYNTH-12 {cell *THIS*}}";
begin
  DIA(1 downto 0) <= \^dia\(1 downto 0);
  DIB(1 downto 0) <= \^dib\(1 downto 0);
  DIC(1 downto 0) <= \^dic\(1 downto 0);
  DID(1 downto 0) <= \^did\(1 downto 0);
  DIE(1 downto 0) <= \^die\(1 downto 0);
  DIF(1 downto 0) <= \^dif\(1 downto 0);
  DIG(1 downto 0) <= \^dig\(1 downto 0);
  \result_reg_reg[15]_0\(1 downto 0) <= \^result_reg_reg[15]_0\(1 downto 0);
  \result_reg_reg[17]_0\(1 downto 0) <= \^result_reg_reg[17]_0\(1 downto 0);
  \result_reg_reg[19]_0\(1 downto 0) <= \^result_reg_reg[19]_0\(1 downto 0);
  \result_reg_reg[21]_0\(1 downto 0) <= \^result_reg_reg[21]_0\(1 downto 0);
  \result_reg_reg[23]_0\(1 downto 0) <= \^result_reg_reg[23]_0\(1 downto 0);
  \result_reg_reg[25]_0\(1 downto 0) <= \^result_reg_reg[25]_0\(1 downto 0);
  \result_reg_reg[27]_0\(1 downto 0) <= \^result_reg_reg[27]_0\(1 downto 0);
  \result_reg_reg[29]_0\(1 downto 0) <= \^result_reg_reg[29]_0\(1 downto 0);
  \result_reg_reg[31]_0\(1 downto 0) <= \^result_reg_reg[31]_0\(1 downto 0);
mult_reg0: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => rd_data(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mult_reg0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => Q(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult_reg0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult_reg0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult_reg0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk_200MHz,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult_reg0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_mult_reg0_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_mult_reg0_P_UNCONNECTED(47 downto 32),
      P(31) => mult_reg0_n_74,
      P(30) => mult_reg0_n_75,
      P(29) => mult_reg0_n_76,
      P(28) => mult_reg0_n_77,
      P(27) => mult_reg0_n_78,
      P(26) => mult_reg0_n_79,
      P(25) => mult_reg0_n_80,
      P(24) => mult_reg0_n_81,
      P(23) => mult_reg0_n_82,
      P(22) => mult_reg0_n_83,
      P(21) => mult_reg0_n_84,
      P(20) => mult_reg0_n_85,
      P(19) => mult_reg0_n_86,
      P(18) => mult_reg0_n_87,
      P(17) => mult_reg0_n_88,
      P(16) => mult_reg0_n_89,
      P(15) => mult_reg0_n_90,
      P(14) => mult_reg0_n_91,
      P(13) => mult_reg0_n_92,
      P(12) => mult_reg0_n_93,
      P(11) => mult_reg0_n_94,
      P(10) => mult_reg0_n_95,
      P(9) => mult_reg0_n_96,
      P(8) => mult_reg0_n_97,
      P(7) => mult_reg0_n_98,
      P(6) => mult_reg0_n_99,
      P(5) => mult_reg0_n_100,
      P(4) => mult_reg0_n_101,
      P(3) => mult_reg0_n_102,
      P(2) => mult_reg0_n_103,
      P(1) => mult_reg0_n_104,
      P(0) => mult_reg0_n_105,
      PATTERNBDETECT => NLW_mult_reg0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult_reg0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mult_reg0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mult_reg0_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mult_reg0_XOROUT_UNCONNECTED(7 downto 0)
    );
out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \result_reg_reg[0]_0\,
      D => valid_stage1,
      Q => mac_out_valid
    );
\result_reg[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_98,
      I2 => \^did\(1),
      O => \result_reg[0]_i_10_n_0\
    );
\result_reg[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_99,
      I2 => \^did\(0),
      O => \result_reg[0]_i_11_n_0\
    );
\result_reg[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_100,
      I2 => \^dic\(1),
      O => \result_reg[0]_i_12_n_0\
    );
\result_reg[0]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_101,
      I2 => \^dic\(0),
      O => \result_reg[0]_i_13_n_0\
    );
\result_reg[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_102,
      I2 => \^dib\(1),
      O => \result_reg[0]_i_14_n_0\
    );
\result_reg[0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_103,
      I2 => \^dib\(0),
      O => \result_reg[0]_i_15_n_0\
    );
\result_reg[0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_104,
      I2 => \^dia\(1),
      O => \result_reg[0]_i_16_n_0\
    );
\result_reg[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_105,
      I2 => \^dia\(0),
      O => \result_reg[0]_i_17_n_0\
    );
\result_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_98,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(7)
    );
\result_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_99,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(6)
    );
\result_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_100,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(5)
    );
\result_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_101,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(4)
    );
\result_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_102,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(3)
    );
\result_reg[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_103,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(2)
    );
\result_reg[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_104,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(1)
    );
\result_reg[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_105,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(0)
    );
\result_reg[16]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_82,
      I2 => \^result_reg_reg[23]_0\(1),
      O => \result_reg[16]_i_10_n_0\
    );
\result_reg[16]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_83,
      I2 => \^result_reg_reg[23]_0\(0),
      O => \result_reg[16]_i_11_n_0\
    );
\result_reg[16]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_84,
      I2 => \^result_reg_reg[21]_0\(1),
      O => \result_reg[16]_i_12_n_0\
    );
\result_reg[16]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_85,
      I2 => \^result_reg_reg[21]_0\(0),
      O => \result_reg[16]_i_13_n_0\
    );
\result_reg[16]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_86,
      I2 => \^result_reg_reg[19]_0\(1),
      O => \result_reg[16]_i_14_n_0\
    );
\result_reg[16]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_87,
      I2 => \^result_reg_reg[19]_0\(0),
      O => \result_reg[16]_i_15_n_0\
    );
\result_reg[16]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_88,
      I2 => \^result_reg_reg[17]_0\(1),
      O => \result_reg[16]_i_16_n_0\
    );
\result_reg[16]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_89,
      I2 => \^result_reg_reg[17]_0\(0),
      O => \result_reg[16]_i_17_n_0\
    );
\result_reg[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_82,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(23)
    );
\result_reg[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_83,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(22)
    );
\result_reg[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_84,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(21)
    );
\result_reg[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_85,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(20)
    );
\result_reg[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_86,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(19)
    );
\result_reg[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_87,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(18)
    );
\result_reg[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_88,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(17)
    );
\result_reg[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_89,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(16)
    );
\result_reg[24]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_75,
      I2 => \^result_reg_reg[31]_0\(0),
      O => \result_reg[24]_i_10_n_0\
    );
\result_reg[24]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_76,
      I2 => \^result_reg_reg[29]_0\(1),
      O => \result_reg[24]_i_11_n_0\
    );
\result_reg[24]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_77,
      I2 => \^result_reg_reg[29]_0\(0),
      O => \result_reg[24]_i_12_n_0\
    );
\result_reg[24]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_78,
      I2 => \^result_reg_reg[27]_0\(1),
      O => \result_reg[24]_i_13_n_0\
    );
\result_reg[24]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_79,
      I2 => \^result_reg_reg[27]_0\(0),
      O => \result_reg[24]_i_14_n_0\
    );
\result_reg[24]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_80,
      I2 => \^result_reg_reg[25]_0\(1),
      O => \result_reg[24]_i_15_n_0\
    );
\result_reg[24]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_81,
      I2 => \^result_reg_reg[25]_0\(0),
      O => \result_reg[24]_i_16_n_0\
    );
\result_reg[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_75,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(30)
    );
\result_reg[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_76,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(29)
    );
\result_reg[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_77,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(28)
    );
\result_reg[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_78,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(27)
    );
\result_reg[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_79,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(26)
    );
\result_reg[24]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_80,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(25)
    );
\result_reg[24]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_81,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(24)
    );
\result_reg[24]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_74,
      I2 => \^result_reg_reg[31]_0\(1),
      O => \result_reg[24]_i_9_n_0\
    );
\result_reg[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_90,
      I2 => \^result_reg_reg[15]_0\(1),
      O => \result_reg[8]_i_10_n_0\
    );
\result_reg[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_91,
      I2 => \^result_reg_reg[15]_0\(0),
      O => \result_reg[8]_i_11_n_0\
    );
\result_reg[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_92,
      I2 => \^dig\(1),
      O => \result_reg[8]_i_12_n_0\
    );
\result_reg[8]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_93,
      I2 => \^dig\(0),
      O => \result_reg[8]_i_13_n_0\
    );
\result_reg[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_94,
      I2 => \^dif\(1),
      O => \result_reg[8]_i_14_n_0\
    );
\result_reg[8]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_95,
      I2 => \^dif\(0),
      O => \result_reg[8]_i_15_n_0\
    );
\result_reg[8]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_96,
      I2 => \^die\(1),
      O => \result_reg[8]_i_16_n_0\
    );
\result_reg[8]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \result_reg_reg[31]_1\,
      I1 => mult_reg0_n_97,
      I2 => \^die\(0),
      O => \result_reg[8]_i_17_n_0\
    );
\result_reg[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_90,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(15)
    );
\result_reg[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_91,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(14)
    );
\result_reg[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_92,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(13)
    );
\result_reg[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_93,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(12)
    );
\result_reg[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_94,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(11)
    );
\result_reg[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_95,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(10)
    );
\result_reg[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_96,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(9)
    );
\result_reg[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mult_reg0_n_97,
      I1 => \result_reg_reg[31]_1\,
      O => \in\(8)
    );
\result_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_15\,
      Q => \^dia\(0)
    );
\result_reg_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \result_reg_reg[0]_i_1_n_0\,
      CO(6) => \result_reg_reg[0]_i_1_n_1\,
      CO(5) => \result_reg_reg[0]_i_1_n_2\,
      CO(4) => \result_reg_reg[0]_i_1_n_3\,
      CO(3) => \result_reg_reg[0]_i_1_n_4\,
      CO(2) => \result_reg_reg[0]_i_1_n_5\,
      CO(1) => \result_reg_reg[0]_i_1_n_6\,
      CO(0) => \result_reg_reg[0]_i_1_n_7\,
      DI(7 downto 0) => \in\(7 downto 0),
      O(7) => \result_reg_reg[0]_i_1_n_8\,
      O(6) => \result_reg_reg[0]_i_1_n_9\,
      O(5) => \result_reg_reg[0]_i_1_n_10\,
      O(4) => \result_reg_reg[0]_i_1_n_11\,
      O(3) => \result_reg_reg[0]_i_1_n_12\,
      O(2) => \result_reg_reg[0]_i_1_n_13\,
      O(1) => \result_reg_reg[0]_i_1_n_14\,
      O(0) => \result_reg_reg[0]_i_1_n_15\,
      S(7) => \result_reg[0]_i_10_n_0\,
      S(6) => \result_reg[0]_i_11_n_0\,
      S(5) => \result_reg[0]_i_12_n_0\,
      S(4) => \result_reg[0]_i_13_n_0\,
      S(3) => \result_reg[0]_i_14_n_0\,
      S(2) => \result_reg[0]_i_15_n_0\,
      S(1) => \result_reg[0]_i_16_n_0\,
      S(0) => \result_reg[0]_i_17_n_0\
    );
\result_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_13\,
      Q => \^dif\(0)
    );
\result_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_12\,
      Q => \^dif\(1)
    );
\result_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_11\,
      Q => \^dig\(0)
    );
\result_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_10\,
      Q => \^dig\(1)
    );
\result_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_9\,
      Q => \^result_reg_reg[15]_0\(0)
    );
\result_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_8\,
      Q => \^result_reg_reg[15]_0\(1)
    );
\result_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_15\,
      Q => \^result_reg_reg[17]_0\(0)
    );
\result_reg_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \result_reg_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \result_reg_reg[16]_i_1_n_0\,
      CO(6) => \result_reg_reg[16]_i_1_n_1\,
      CO(5) => \result_reg_reg[16]_i_1_n_2\,
      CO(4) => \result_reg_reg[16]_i_1_n_3\,
      CO(3) => \result_reg_reg[16]_i_1_n_4\,
      CO(2) => \result_reg_reg[16]_i_1_n_5\,
      CO(1) => \result_reg_reg[16]_i_1_n_6\,
      CO(0) => \result_reg_reg[16]_i_1_n_7\,
      DI(7 downto 0) => \in\(23 downto 16),
      O(7) => \result_reg_reg[16]_i_1_n_8\,
      O(6) => \result_reg_reg[16]_i_1_n_9\,
      O(5) => \result_reg_reg[16]_i_1_n_10\,
      O(4) => \result_reg_reg[16]_i_1_n_11\,
      O(3) => \result_reg_reg[16]_i_1_n_12\,
      O(2) => \result_reg_reg[16]_i_1_n_13\,
      O(1) => \result_reg_reg[16]_i_1_n_14\,
      O(0) => \result_reg_reg[16]_i_1_n_15\,
      S(7) => \result_reg[16]_i_10_n_0\,
      S(6) => \result_reg[16]_i_11_n_0\,
      S(5) => \result_reg[16]_i_12_n_0\,
      S(4) => \result_reg[16]_i_13_n_0\,
      S(3) => \result_reg[16]_i_14_n_0\,
      S(2) => \result_reg[16]_i_15_n_0\,
      S(1) => \result_reg[16]_i_16_n_0\,
      S(0) => \result_reg[16]_i_17_n_0\
    );
\result_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_14\,
      Q => \^result_reg_reg[17]_0\(1)
    );
\result_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_13\,
      Q => \^result_reg_reg[19]_0\(0)
    );
\result_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_12\,
      Q => \^result_reg_reg[19]_0\(1)
    );
\result_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_14\,
      Q => \^dia\(1)
    );
\result_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_11\,
      Q => \^result_reg_reg[21]_0\(0)
    );
\result_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_10\,
      Q => \^result_reg_reg[21]_0\(1)
    );
\result_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_9\,
      Q => \^result_reg_reg[23]_0\(0)
    );
\result_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_8\,
      Q => \^result_reg_reg[23]_0\(1)
    );
\result_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_15\,
      Q => \^result_reg_reg[25]_0\(0)
    );
\result_reg_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \result_reg_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_result_reg_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \result_reg_reg[24]_i_1_n_1\,
      CO(5) => \result_reg_reg[24]_i_1_n_2\,
      CO(4) => \result_reg_reg[24]_i_1_n_3\,
      CO(3) => \result_reg_reg[24]_i_1_n_4\,
      CO(2) => \result_reg_reg[24]_i_1_n_5\,
      CO(1) => \result_reg_reg[24]_i_1_n_6\,
      CO(0) => \result_reg_reg[24]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \in\(30 downto 24),
      O(7) => \result_reg_reg[24]_i_1_n_8\,
      O(6) => \result_reg_reg[24]_i_1_n_9\,
      O(5) => \result_reg_reg[24]_i_1_n_10\,
      O(4) => \result_reg_reg[24]_i_1_n_11\,
      O(3) => \result_reg_reg[24]_i_1_n_12\,
      O(2) => \result_reg_reg[24]_i_1_n_13\,
      O(1) => \result_reg_reg[24]_i_1_n_14\,
      O(0) => \result_reg_reg[24]_i_1_n_15\,
      S(7) => \result_reg[24]_i_9_n_0\,
      S(6) => \result_reg[24]_i_10_n_0\,
      S(5) => \result_reg[24]_i_11_n_0\,
      S(4) => \result_reg[24]_i_12_n_0\,
      S(3) => \result_reg[24]_i_13_n_0\,
      S(2) => \result_reg[24]_i_14_n_0\,
      S(1) => \result_reg[24]_i_15_n_0\,
      S(0) => \result_reg[24]_i_16_n_0\
    );
\result_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_14\,
      Q => \^result_reg_reg[25]_0\(1)
    );
\result_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_13\,
      Q => \^result_reg_reg[27]_0\(0)
    );
\result_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_12\,
      Q => \^result_reg_reg[27]_0\(1)
    );
\result_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_11\,
      Q => \^result_reg_reg[29]_0\(0)
    );
\result_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_10\,
      Q => \^result_reg_reg[29]_0\(1)
    );
\result_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_13\,
      Q => \^dib\(0)
    );
\result_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_9\,
      Q => \^result_reg_reg[31]_0\(0)
    );
\result_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_8\,
      Q => \^result_reg_reg[31]_0\(1)
    );
\result_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_12\,
      Q => \^dib\(1)
    );
\result_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_11\,
      Q => \^dic\(0)
    );
\result_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_10\,
      Q => \^dic\(1)
    );
\result_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_9\,
      Q => \^did\(0)
    );
\result_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_8\,
      Q => \^did\(1)
    );
\result_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_15\,
      Q => \^die\(0)
    );
\result_reg_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \result_reg_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \result_reg_reg[8]_i_1_n_0\,
      CO(6) => \result_reg_reg[8]_i_1_n_1\,
      CO(5) => \result_reg_reg[8]_i_1_n_2\,
      CO(4) => \result_reg_reg[8]_i_1_n_3\,
      CO(3) => \result_reg_reg[8]_i_1_n_4\,
      CO(2) => \result_reg_reg[8]_i_1_n_5\,
      CO(1) => \result_reg_reg[8]_i_1_n_6\,
      CO(0) => \result_reg_reg[8]_i_1_n_7\,
      DI(7 downto 0) => \in\(15 downto 8),
      O(7) => \result_reg_reg[8]_i_1_n_8\,
      O(6) => \result_reg_reg[8]_i_1_n_9\,
      O(5) => \result_reg_reg[8]_i_1_n_10\,
      O(4) => \result_reg_reg[8]_i_1_n_11\,
      O(3) => \result_reg_reg[8]_i_1_n_12\,
      O(2) => \result_reg_reg[8]_i_1_n_13\,
      O(1) => \result_reg_reg[8]_i_1_n_14\,
      O(0) => \result_reg_reg[8]_i_1_n_15\,
      S(7) => \result_reg[8]_i_10_n_0\,
      S(6) => \result_reg[8]_i_11_n_0\,
      S(5) => \result_reg[8]_i_12_n_0\,
      S(4) => \result_reg[8]_i_13_n_0\,
      S(3) => \result_reg[8]_i_14_n_0\,
      S(2) => \result_reg[8]_i_15_n_0\,
      S(1) => \result_reg[8]_i_16_n_0\,
      S(0) => \result_reg[8]_i_17_n_0\
    );
\result_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => valid_stage1,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_14\,
      Q => \^die\(1)
    );
valid_stage1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \result_reg_reg[0]_0\,
      D => mac_in_valid_reg,
      Q => valid_stage1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_pl_system_top_system_level_0_3_top_stream_acc is
  port (
    sys_rst_n_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    clk_200MHz : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_100MHz : in STD_LOGIC;
    reg1_valid_strobe : in STD_LOGIC;
    \result_reg_reg[31]_1\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DSP_A_B_DATA_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_top_stream_acc : entity is "top_stream_acc";
end ps_pl_system_top_system_level_0_3_top_stream_acc;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_top_stream_acc is
  signal \FSM_onehot_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal mac_in_valid_reg : STD_LOGIC;
  signal mac_out_valid : STD_LOGIC;
  signal rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rd_data__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg2_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal result_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal result_reg_0 : STD_LOGIC;
  signal rx_af_rd_en_reg0 : STD_LOGIC;
  signal \^sys_rst_n_0\ : STD_LOGIC;
  signal tx_af_rd_en : STD_LOGIC;
  signal tx_cdc_fifo_n_32 : STD_LOGIC;
  signal u_mac_n_1 : STD_LOGIC;
  signal u_mac_n_10 : STD_LOGIC;
  signal u_mac_n_11 : STD_LOGIC;
  signal u_mac_n_12 : STD_LOGIC;
  signal u_mac_n_13 : STD_LOGIC;
  signal u_mac_n_14 : STD_LOGIC;
  signal u_mac_n_15 : STD_LOGIC;
  signal u_mac_n_16 : STD_LOGIC;
  signal u_mac_n_17 : STD_LOGIC;
  signal u_mac_n_18 : STD_LOGIC;
  signal u_mac_n_19 : STD_LOGIC;
  signal u_mac_n_2 : STD_LOGIC;
  signal u_mac_n_20 : STD_LOGIC;
  signal u_mac_n_21 : STD_LOGIC;
  signal u_mac_n_22 : STD_LOGIC;
  signal u_mac_n_23 : STD_LOGIC;
  signal u_mac_n_24 : STD_LOGIC;
  signal u_mac_n_25 : STD_LOGIC;
  signal u_mac_n_26 : STD_LOGIC;
  signal u_mac_n_27 : STD_LOGIC;
  signal u_mac_n_28 : STD_LOGIC;
  signal u_mac_n_29 : STD_LOGIC;
  signal u_mac_n_3 : STD_LOGIC;
  signal u_mac_n_30 : STD_LOGIC;
  signal u_mac_n_31 : STD_LOGIC;
  signal u_mac_n_32 : STD_LOGIC;
  signal u_mac_n_4 : STD_LOGIC;
  signal u_mac_n_5 : STD_LOGIC;
  signal u_mac_n_6 : STD_LOGIC;
  signal u_mac_n_7 : STD_LOGIC;
  signal u_mac_n_8 : STD_LOGIC;
  signal u_mac_n_9 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "IDLE_ST:001,PROC_ST:010,DONE_ST:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "IDLE_ST:001,PROC_ST:010,DONE_ST:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "IDLE_ST:001,PROC_ST:010,DONE_ST:100,";
begin
  sys_rst_n_0 <= \^sys_rst_n_0\;
\FSM_onehot_curr_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => reg2_status(1),
      O => \FSM_onehot_curr_state[1]_i_1_n_0\
    );
\FSM_onehot_curr_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => \^sys_rst_n_0\
    );
\FSM_onehot_curr_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100MHz,
      CE => tx_cdc_fifo_n_32,
      D => '0',
      PRE => \^sys_rst_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[0]\
    );
\FSM_onehot_curr_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100MHz,
      CE => tx_cdc_fifo_n_32,
      CLR => \^sys_rst_n_0\,
      D => \FSM_onehot_curr_state[1]_i_1_n_0\,
      Q => reg2_status(0)
    );
\FSM_onehot_curr_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100MHz,
      CE => tx_cdc_fifo_n_32,
      CLR => \^sys_rst_n_0\,
      D => reg2_status(0),
      Q => reg2_status(1)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => reg2_status(0),
      I1 => result_reg(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      I4 => Q(0),
      I5 => DSP_A_B_DATA_INST(0),
      O => D(0)
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => reg2_status(1),
      I1 => result_reg(1),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      I4 => Q(1),
      I5 => DSP_A_B_DATA_INST(1),
      O => D(1)
    );
\result_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(0),
      Q => result_reg(0)
    );
\result_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(10),
      Q => \result_reg_reg[31]_0\(8)
    );
\result_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(11),
      Q => \result_reg_reg[31]_0\(9)
    );
\result_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(12),
      Q => \result_reg_reg[31]_0\(10)
    );
\result_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(13),
      Q => \result_reg_reg[31]_0\(11)
    );
\result_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(14),
      Q => \result_reg_reg[31]_0\(12)
    );
\result_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(15),
      Q => \result_reg_reg[31]_0\(13)
    );
\result_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(16),
      Q => \result_reg_reg[31]_0\(14)
    );
\result_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(17),
      Q => \result_reg_reg[31]_0\(15)
    );
\result_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(18),
      Q => \result_reg_reg[31]_0\(16)
    );
\result_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(19),
      Q => \result_reg_reg[31]_0\(17)
    );
\result_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(1),
      Q => result_reg(1)
    );
\result_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(20),
      Q => \result_reg_reg[31]_0\(18)
    );
\result_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(21),
      Q => \result_reg_reg[31]_0\(19)
    );
\result_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(22),
      Q => \result_reg_reg[31]_0\(20)
    );
\result_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(23),
      Q => \result_reg_reg[31]_0\(21)
    );
\result_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(24),
      Q => \result_reg_reg[31]_0\(22)
    );
\result_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(25),
      Q => \result_reg_reg[31]_0\(23)
    );
\result_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(26),
      Q => \result_reg_reg[31]_0\(24)
    );
\result_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(27),
      Q => \result_reg_reg[31]_0\(25)
    );
\result_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(28),
      Q => \result_reg_reg[31]_0\(26)
    );
\result_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(29),
      Q => \result_reg_reg[31]_0\(27)
    );
\result_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(2),
      Q => \result_reg_reg[31]_0\(0)
    );
\result_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(30),
      Q => \result_reg_reg[31]_0\(28)
    );
\result_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(31),
      Q => \result_reg_reg[31]_0\(29)
    );
\result_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(3),
      Q => \result_reg_reg[31]_0\(1)
    );
\result_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(4),
      Q => \result_reg_reg[31]_0\(2)
    );
\result_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(5),
      Q => \result_reg_reg[31]_0\(3)
    );
\result_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(6),
      Q => \result_reg_reg[31]_0\(4)
    );
\result_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(7),
      Q => \result_reg_reg[31]_0\(5)
    );
\result_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(8),
      Q => \result_reg_reg[31]_0\(6)
    );
\result_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \rd_data__0\(9),
      Q => \result_reg_reg[31]_0\(7)
    );
rx_af_rd_en_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \^sys_rst_n_0\,
      D => rx_af_rd_en_reg0,
      Q => mac_in_valid_reg
    );
rx_cdc_fifo: entity work.ps_pl_system_top_system_level_0_3_async_fifo
     port map (
      DSP_A_B_DATA_INST(15 downto 0) => DSP_A_B_DATA_INST(15 downto 0),
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      mac_in_valid_reg => mac_in_valid_reg,
      rd_data(15 downto 0) => rd_data(15 downto 0),
      reg1_valid_strobe => reg1_valid_strobe,
      rx_af_rd_en_reg0 => rx_af_rd_en_reg0,
      \wr_bin_ptr_reg[3]_0\ => \^sys_rst_n_0\
    );
tx_af_rd_en_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \^sys_rst_n_0\,
      D => result_reg_0,
      Q => tx_af_rd_en
    );
tx_cdc_fifo: entity work.ps_pl_system_top_system_level_0_3_async_fifo_0
     port map (
      D(31 downto 0) => \rd_data__0\(31 downto 0),
      DIA(1) => u_mac_n_1,
      DIA(0) => u_mac_n_2,
      DIB(1) => u_mac_n_3,
      DIB(0) => u_mac_n_4,
      DIC(1) => u_mac_n_5,
      DIC(0) => u_mac_n_6,
      DID(1) => u_mac_n_7,
      DID(0) => u_mac_n_8,
      DIE(1) => u_mac_n_9,
      DIE(0) => u_mac_n_10,
      DIF(1) => u_mac_n_11,
      DIF(0) => u_mac_n_12,
      DIG(1) => u_mac_n_13,
      DIG(0) => u_mac_n_14,
      E(0) => tx_cdc_fifo_n_32,
      \FSM_onehot_curr_state_reg[1]\(0) => result_reg_0,
      Q(2 downto 1) => reg2_status(1 downto 0),
      Q(0) => \FSM_onehot_curr_state_reg_n_0_[0]\,
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      mac_out_valid => mac_out_valid,
      reg1_valid_strobe => reg1_valid_strobe,
      \result_reg_reg[15]\(1) => u_mac_n_15,
      \result_reg_reg[15]\(0) => u_mac_n_16,
      \result_reg_reg[15]_0\(1) => u_mac_n_17,
      \result_reg_reg[15]_0\(0) => u_mac_n_18,
      \result_reg_reg[15]_1\(1) => u_mac_n_19,
      \result_reg_reg[15]_1\(0) => u_mac_n_20,
      \result_reg_reg[15]_2\(1) => u_mac_n_21,
      \result_reg_reg[15]_2\(0) => u_mac_n_22,
      \result_reg_reg[15]_3\(1) => u_mac_n_23,
      \result_reg_reg[15]_3\(0) => u_mac_n_24,
      \result_reg_reg[15]_4\(1) => u_mac_n_25,
      \result_reg_reg[15]_4\(0) => u_mac_n_26,
      \result_reg_reg[15]_5\(1) => u_mac_n_27,
      \result_reg_reg[15]_5\(0) => u_mac_n_28,
      \result_reg_reg[29]\(1) => u_mac_n_29,
      \result_reg_reg[29]\(0) => u_mac_n_30,
      \result_reg_reg[29]_0\(1) => u_mac_n_31,
      \result_reg_reg[29]_0\(0) => u_mac_n_32,
      tx_af_rd_en => tx_af_rd_en,
      \wr_bin_ptr_reg[3]_0\ => \^sys_rst_n_0\
    );
u_mac: entity work.ps_pl_system_top_system_level_0_3_pipelined_mac
     port map (
      DIA(1) => u_mac_n_1,
      DIA(0) => u_mac_n_2,
      DIB(1) => u_mac_n_3,
      DIB(0) => u_mac_n_4,
      DIC(1) => u_mac_n_5,
      DIC(0) => u_mac_n_6,
      DID(1) => u_mac_n_7,
      DID(0) => u_mac_n_8,
      DIE(1) => u_mac_n_9,
      DIE(0) => u_mac_n_10,
      DIF(1) => u_mac_n_11,
      DIF(0) => u_mac_n_12,
      DIG(1) => u_mac_n_13,
      DIG(0) => u_mac_n_14,
      Q(15 downto 0) => Q(15 downto 0),
      clk_200MHz => clk_200MHz,
      mac_in_valid_reg => mac_in_valid_reg,
      mac_out_valid => mac_out_valid,
      rd_data(15 downto 0) => rd_data(15 downto 0),
      \result_reg_reg[0]_0\ => \^sys_rst_n_0\,
      \result_reg_reg[15]_0\(1) => u_mac_n_15,
      \result_reg_reg[15]_0\(0) => u_mac_n_16,
      \result_reg_reg[17]_0\(1) => u_mac_n_17,
      \result_reg_reg[17]_0\(0) => u_mac_n_18,
      \result_reg_reg[19]_0\(1) => u_mac_n_19,
      \result_reg_reg[19]_0\(0) => u_mac_n_20,
      \result_reg_reg[21]_0\(1) => u_mac_n_21,
      \result_reg_reg[21]_0\(0) => u_mac_n_22,
      \result_reg_reg[23]_0\(1) => u_mac_n_23,
      \result_reg_reg[23]_0\(0) => u_mac_n_24,
      \result_reg_reg[25]_0\(1) => u_mac_n_25,
      \result_reg_reg[25]_0\(0) => u_mac_n_26,
      \result_reg_reg[27]_0\(1) => u_mac_n_27,
      \result_reg_reg[27]_0\(0) => u_mac_n_28,
      \result_reg_reg[29]_0\(1) => u_mac_n_29,
      \result_reg_reg[29]_0\(0) => u_mac_n_30,
      \result_reg_reg[31]_0\(1) => u_mac_n_31,
      \result_reg_reg[31]_0\(0) => u_mac_n_32,
      \result_reg_reg[31]_1\ => \result_reg_reg[31]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_pl_system_top_system_level_0_3_top_system_level is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_200MHz : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    rxd : in STD_LOGIC;
    txd : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_top_system_level : entity is "top_system_level";
end ps_pl_system_top_system_level_0_3_top_system_level;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_top_system_level is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal accelerator_inst_n_0 : STD_LOGIC;
  signal accelerator_inst_n_1 : STD_LOGIC;
  signal accelerator_inst_n_2 : STD_LOGIC;
  signal reg0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg1_valid_strobe : STD_LOGIC;
  signal result_reg : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \result_reg_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
begin
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
  txd <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
accelerator_inst: entity work.ps_pl_system_top_system_level_0_3_top_stream_acc
     port map (
      D(1) => accelerator_inst_n_1,
      D(0) => accelerator_inst_n_2,
      DSP_A_B_DATA_INST(15 downto 0) => reg1(15 downto 0),
      Q(15 downto 0) => reg0(15 downto 0),
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      reg1_valid_strobe => reg1_valid_strobe,
      \result_reg_reg[31]_0\(29 downto 0) => result_reg(31 downto 2),
      \result_reg_reg[31]_1\ => \result_reg_reg[0]_i_18_n_0\,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      sys_rst_n => sys_rst_n,
      sys_rst_n_0 => accelerator_inst_n_0
    );
axi_slave_inst: entity work.ps_pl_system_top_system_level_0_3_axi4_lite_slave
     port map (
      D(1) => accelerator_inst_n_1,
      D(0) => accelerator_inst_n_2,
      Q(15 downto 0) => reg0(15 downto 0),
      arready_reg_0 => s_axi_arready,
      awready_reg_0 => \^s_axi_awready\,
      \rdata_reg[31]_0\(29 downto 0) => result_reg(31 downto 2),
      \reg1_reg[15]_0\(15 downto 0) => reg1(15 downto 0),
      reg1_valid_strobe => reg1_valid_strobe,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
\result_reg_reg[0]_i_18\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => accelerator_inst_n_0,
      D => '1',
      Q => \result_reg_reg[0]_i_18_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_pl_system_top_system_level_0_3 is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_200MHz : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    rxd : in STD_LOGIC;
    txd : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_pl_system_top_system_level_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_pl_system_top_system_level_0_3 : entity is "ps_pl_system_top_system_level_0_3,top_system_level,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_pl_system_top_system_level_0_3 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_pl_system_top_system_level_0_3 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_pl_system_top_system_level_0_3 : entity is "top_system_level,Vivado 2020.1";
end ps_pl_system_top_system_level_0_3;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
inst: entity work.ps_pl_system_top_system_level_0_3_top_system_level
     port map (
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      rxd => rxd,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sys_rst_n => sys_rst_n,
      txd => txd
    );
end STRUCTURE;
