-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Aug  8 13:46:39 2026
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
    \rd_gray_sync2_reg[1]_0\ : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    rx_af_empty : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 17 downto 0 );
    clk_200MHz : in STD_LOGIC;
    \rd_bin_ptr_reg[2]_0\ : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reg1_wr_pulse : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    mac_in_valid_reg : in STD_LOGIC;
    \track_mem_reg[0][1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_async_fifo : entity is "async_fifo";
end ps_pl_system_top_system_level_0_3_async_fifo;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_async_fifo is
  signal mem_reg_0_15_0_13_i_16_n_0 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_10 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_11 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_12 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_13 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_2 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_3 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_4 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_5 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_6 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_7 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_8 : STD_LOGIC;
  signal mem_reg_0_15_14_27_n_9 : STD_LOGIC;
  signal mem_reg_0_15_28_33_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_33_n_1 : STD_LOGIC;
  signal mem_reg_0_15_28_33_n_2 : STD_LOGIC;
  signal mem_reg_0_15_28_33_n_3 : STD_LOGIC;
  signal rd_bin_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rd_bin_next0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rd_bin_ptr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_gray_ptr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rd_gray_ptr[3]_i_3__0_n_0\ : STD_LOGIC;
  signal rd_gray_sync1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_gray_sync2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_gray_sync2_reg[1]_0\ : STD_LOGIC;
  signal rx_af_wr_en1 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal wr_bin_next : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \wr_bin_next0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \wr_bin_next__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wr_bin_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal wr_data : STD_LOGIC_VECTOR ( 32 to 32 );
  signal wr_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_gray_ptr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_gray_sync1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_gray_sync2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_13 : label is 544;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mem_reg_0_15_0_13_i_16 : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_14_27 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_14_27 : label is 544;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_27 : label is "accelerator_inst/rx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_27 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_14_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_27 : label is 15;
  attribute ram_offset of mem_reg_0_15_14_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_27 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_28_33 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_28_33 : label is 544;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_33 : label is "accelerator_inst/rx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_33 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_28_33 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_33 : label is 15;
  attribute ram_offset of mem_reg_0_15_28_33 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_33 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_33 : label is 33;
  attribute SOFT_HLUTNM of \rd_bin_ptr[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rd_bin_ptr[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_bin_ptr[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_gray_ptr[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rd_gray_ptr[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_gray_ptr[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_bin_ptr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_bin_ptr[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_bin_ptr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_gray_ptr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_gray_ptr[2]_i_1\ : label is "soft_lutpair1";
begin
  \rd_gray_sync2_reg[1]_0\ <= \^rd_gray_sync2_reg[1]_0\;
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
      DIA(1 downto 0) => \track_mem_reg[0][1]\(1 downto 0),
      DIB(1 downto 0) => \track_mem_reg[0][1]\(3 downto 2),
      DIC(1 downto 0) => \track_mem_reg[0][1]\(5 downto 4),
      DID(1 downto 0) => \track_mem_reg[0][1]\(7 downto 6),
      DIE(1 downto 0) => \track_mem_reg[0][1]\(9 downto 8),
      DIF(1 downto 0) => \track_mem_reg[0][1]\(11 downto 10),
      DIG(1 downto 0) => \track_mem_reg[0][1]\(13 downto 12),
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
      WE => \wr_bin_next0__0\(0)
    );
mem_reg_0_15_0_13_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => reg1_wr_pulse,
      I1 => s_axis_tvalid,
      I2 => mem_reg_0_15_0_13_i_16_n_0,
      I3 => s_axis_tready_INST_0_i_2_n_0,
      O => \wr_bin_next0__0\(0)
    );
mem_reg_0_15_0_13_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_gray_ptr(0),
      I1 => rd_gray_sync2(0),
      I2 => wr_gray_ptr(1),
      I3 => rd_gray_sync2(1),
      O => mem_reg_0_15_0_13_i_16_n_0
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
      DIA(1 downto 0) => \track_mem_reg[0][1]\(15 downto 14),
      DIB(1 downto 0) => \track_mem_reg[0][1]\(17 downto 16),
      DIC(1 downto 0) => \track_mem_reg[0][1]\(19 downto 18),
      DID(1 downto 0) => \track_mem_reg[0][1]\(21 downto 20),
      DIE(1 downto 0) => \track_mem_reg[0][1]\(23 downto 22),
      DIF(1 downto 0) => \track_mem_reg[0][1]\(25 downto 24),
      DIG(1 downto 0) => \track_mem_reg[0][1]\(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data(15 downto 14),
      DOB(1) => mem_reg_0_15_14_27_n_2,
      DOB(0) => mem_reg_0_15_14_27_n_3,
      DOC(1) => mem_reg_0_15_14_27_n_4,
      DOC(0) => mem_reg_0_15_14_27_n_5,
      DOD(1) => mem_reg_0_15_14_27_n_6,
      DOD(0) => mem_reg_0_15_14_27_n_7,
      DOE(1) => mem_reg_0_15_14_27_n_8,
      DOE(0) => mem_reg_0_15_14_27_n_9,
      DOF(1) => mem_reg_0_15_14_27_n_10,
      DOF(0) => mem_reg_0_15_14_27_n_11,
      DOG(1) => mem_reg_0_15_14_27_n_12,
      DOG(0) => mem_reg_0_15_14_27_n_13,
      DOH(1 downto 0) => NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_100MHz,
      WE => \wr_bin_next0__0\(0)
    );
mem_reg_0_15_28_33: unisim.vcomponents.RAM32M16
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
      DIA(1 downto 0) => \track_mem_reg[0][1]\(29 downto 28),
      DIB(1 downto 0) => \track_mem_reg[0][1]\(31 downto 30),
      DIC(1) => rx_af_wr_en1,
      DIC(0) => wr_data(32),
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1) => mem_reg_0_15_28_33_n_0,
      DOA(0) => mem_reg_0_15_28_33_n_1,
      DOB(1) => mem_reg_0_15_28_33_n_2,
      DOB(0) => mem_reg_0_15_28_33_n_3,
      DOC(1 downto 0) => rd_data(17 downto 16),
      DOD(1 downto 0) => NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED(1 downto 0),
      DOE(1 downto 0) => NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED(1 downto 0),
      DOF(1 downto 0) => NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_100MHz,
      WE => \wr_bin_next0__0\(0)
    );
mem_reg_0_15_28_33_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAA28AAAAAAAA"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => wr_gray_ptr(0),
      I2 => rd_gray_sync2(0),
      I3 => wr_gray_ptr(1),
      I4 => rd_gray_sync2(1),
      I5 => s_axis_tready_INST_0_i_2_n_0,
      O => rx_af_wr_en1
    );
mem_reg_0_15_28_33_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_af_wr_en1,
      I1 => s_axis_tlast,
      O => wr_data(32)
    );
\rd_bin_ptr[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_bin_ptr_reg(0),
      I1 => \rd_bin_next0__0\(0),
      O => rd_bin_next(0)
    );
\rd_bin_ptr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_bin_ptr_reg(0),
      I1 => \rd_bin_next0__0\(0),
      I2 => rd_bin_ptr_reg(1),
      O => rd_bin_next(1)
    );
\rd_bin_ptr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \rd_bin_next0__0\(0),
      I1 => rd_bin_ptr_reg(0),
      I2 => rd_bin_ptr_reg(1),
      I3 => rd_bin_ptr_reg(2),
      O => rd_bin_next(2)
    );
\rd_bin_ptr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_bin_ptr_reg(1),
      I1 => rd_bin_ptr_reg(0),
      I2 => \rd_bin_next0__0\(0),
      I3 => rd_bin_ptr_reg(2),
      I4 => rd_bin_ptr_reg(3),
      O => rd_bin_next(3)
    );
\rd_bin_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_bin_next(0),
      Q => rd_bin_ptr_reg(0)
    );
\rd_bin_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_bin_next(1),
      Q => rd_bin_ptr_reg(1)
    );
\rd_bin_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_bin_next(2),
      Q => rd_bin_ptr_reg(2)
    );
\rd_bin_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_bin_next(3),
      Q => rd_bin_ptr_reg(3)
    );
\rd_gray_ptr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => rd_bin_ptr_reg(1),
      I1 => \rd_bin_next0__0\(0),
      I2 => rd_bin_ptr_reg(0),
      O => rd_gray_next(0)
    );
\rd_gray_ptr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => rd_bin_ptr_reg(2),
      I1 => rd_bin_ptr_reg(1),
      I2 => \rd_bin_next0__0\(0),
      I3 => rd_bin_ptr_reg(0),
      O => rd_gray_next(1)
    );
\rd_gray_ptr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56666666"
    )
        port map (
      I0 => rd_bin_ptr_reg(3),
      I1 => rd_bin_ptr_reg(2),
      I2 => rd_bin_ptr_reg(1),
      I3 => rd_bin_ptr_reg(0),
      I4 => \rd_bin_next0__0\(0),
      O => rd_gray_next(2)
    );
\rd_gray_ptr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5666666666666666"
    )
        port map (
      I0 => rd_gray_ptr(4),
      I1 => rd_bin_ptr_reg(3),
      I2 => rd_bin_ptr_reg(2),
      I3 => \rd_bin_next0__0\(0),
      I4 => rd_bin_ptr_reg(0),
      I5 => rd_bin_ptr_reg(1),
      O => rd_gray_next(3)
    );
\rd_gray_ptr[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAA28AAAAAAAA"
    )
        port map (
      I0 => mac_in_valid_reg,
      I1 => rd_gray_ptr(0),
      I2 => wr_gray_sync2(0),
      I3 => rd_gray_ptr(1),
      I4 => wr_gray_sync2(1),
      I5 => \rd_gray_ptr[3]_i_3__0_n_0\,
      O => \rd_bin_next0__0\(0)
    );
\rd_gray_ptr[3]_i_3__0\: unisim.vcomponents.LUT6
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
      O => \rd_gray_ptr[3]_i_3__0_n_0\
    );
\rd_gray_ptr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_bin_ptr_reg(2),
      I1 => \rd_bin_next0__0\(0),
      I2 => rd_bin_ptr_reg(0),
      I3 => rd_bin_ptr_reg(1),
      I4 => rd_bin_ptr_reg(3),
      I5 => rd_gray_ptr(4),
      O => rd_bin_next(4)
    );
\rd_gray_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_next(0),
      Q => rd_gray_ptr(0)
    );
\rd_gray_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_next(1),
      Q => rd_gray_ptr(1)
    );
\rd_gray_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_next(2),
      Q => rd_gray_ptr(2)
    );
\rd_gray_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_next(3),
      Q => rd_gray_ptr(3)
    );
\rd_gray_ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_bin_next(4),
      Q => rd_gray_ptr(4)
    );
\rd_gray_sync1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_ptr(0),
      Q => rd_gray_sync1(0)
    );
\rd_gray_sync1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_ptr(1),
      Q => rd_gray_sync1(1)
    );
\rd_gray_sync1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_ptr(2),
      Q => rd_gray_sync1(2)
    );
\rd_gray_sync1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_ptr(3),
      Q => rd_gray_sync1(3)
    );
\rd_gray_sync1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_ptr(4),
      Q => rd_gray_sync1(4)
    );
\rd_gray_sync2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_sync1(0),
      Q => rd_gray_sync2(0)
    );
\rd_gray_sync2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_sync1(1),
      Q => rd_gray_sync2(1)
    );
\rd_gray_sync2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_sync1(2),
      Q => rd_gray_sync2(2)
    );
\rd_gray_sync2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_sync1(3),
      Q => rd_gray_sync2(3)
    );
\rd_gray_sync2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => rd_gray_sync1(4),
      Q => rd_gray_sync2(4)
    );
rx_af_rd_en_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \rd_gray_ptr[3]_i_3__0_n_0\,
      I1 => wr_gray_sync2(1),
      I2 => rd_gray_ptr(1),
      I3 => wr_gray_sync2(0),
      I4 => rd_gray_ptr(0),
      O => rx_af_empty
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rd_gray_sync2_reg[1]_0\,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => rd_gray_sync2(1),
      I2 => wr_gray_ptr(1),
      I3 => rd_gray_sync2(0),
      I4 => wr_gray_ptr(0),
      O => \^rd_gray_sync2_reg[1]_0\
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT6
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
      O => s_axis_tready_INST_0_i_2_n_0
    );
\wr_bin_ptr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"999A"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[0]\,
      I1 => \^rd_gray_sync2_reg[1]_0\,
      I2 => s_axis_tvalid,
      I3 => reg1_wr_pulse,
      O => \wr_bin_next__0\(0)
    );
\wr_bin_ptr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5700A8"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[0]\,
      I1 => reg1_wr_pulse,
      I2 => s_axis_tvalid,
      I3 => \^rd_gray_sync2_reg[1]_0\,
      I4 => \wr_bin_ptr_reg_n_0_[1]\,
      O => \wr_bin_next__0\(1)
    );
\wr_bin_ptr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFF54000000"
    )
        port map (
      I0 => \^rd_gray_sync2_reg[1]_0\,
      I1 => s_axis_tvalid,
      I2 => reg1_wr_pulse,
      I3 => \wr_bin_ptr_reg_n_0_[0]\,
      I4 => \wr_bin_ptr_reg_n_0_[1]\,
      I5 => \wr_bin_ptr_reg_n_0_[2]\,
      O => \wr_bin_next__0\(2)
    );
\wr_bin_ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_bin_next0__0\(0),
      I3 => \wr_bin_ptr_reg_n_0_[2]\,
      I4 => \wr_bin_ptr_reg_n_0_[3]\,
      O => \wr_bin_next__0\(3)
    );
\wr_bin_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => \wr_bin_next__0\(0),
      Q => \wr_bin_ptr_reg_n_0_[0]\
    );
\wr_bin_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => \wr_bin_next__0\(1),
      Q => \wr_bin_ptr_reg_n_0_[1]\
    );
\wr_bin_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => \wr_bin_next__0\(2),
      Q => \wr_bin_ptr_reg_n_0_[2]\
    );
\wr_bin_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => \wr_bin_next__0\(3),
      Q => \wr_bin_ptr_reg_n_0_[3]\
    );
\wr_gray_ptr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555AA56"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => reg1_wr_pulse,
      I2 => s_axis_tvalid,
      I3 => \^rd_gray_sync2_reg[1]_0\,
      I4 => \wr_bin_ptr_reg_n_0_[0]\,
      O => wr_gray_next(0)
    );
\wr_gray_ptr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6565656666666666"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \wr_bin_ptr_reg_n_0_[1]\,
      I2 => \^rd_gray_sync2_reg[1]_0\,
      I3 => s_axis_tvalid,
      I4 => reg1_wr_pulse,
      I5 => \wr_bin_ptr_reg_n_0_[0]\,
      O => wr_gray_next(1)
    );
\wr_gray_ptr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56666666"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[3]\,
      I1 => \wr_bin_ptr_reg_n_0_[2]\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      I3 => \wr_bin_ptr_reg_n_0_[0]\,
      I4 => \wr_bin_next0__0\(0),
      O => wr_gray_next(2)
    );
\wr_gray_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5666666666666666"
    )
        port map (
      I0 => wr_gray_ptr(4),
      I1 => \wr_bin_ptr_reg_n_0_[3]\,
      I2 => \wr_bin_ptr_reg_n_0_[2]\,
      I3 => \wr_bin_next0__0\(0),
      I4 => \wr_bin_ptr_reg_n_0_[0]\,
      I5 => \wr_bin_ptr_reg_n_0_[1]\,
      O => wr_gray_next(3)
    );
\wr_gray_ptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \wr_bin_next0__0\(0),
      I2 => \wr_bin_ptr_reg_n_0_[0]\,
      I3 => \wr_bin_ptr_reg_n_0_[1]\,
      I4 => \wr_bin_ptr_reg_n_0_[3]\,
      I5 => wr_gray_ptr(4),
      O => wr_bin_next(4)
    );
\wr_gray_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_next(0),
      Q => wr_gray_ptr(0)
    );
\wr_gray_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_next(1),
      Q => wr_gray_ptr(1)
    );
\wr_gray_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_next(2),
      Q => wr_gray_ptr(2)
    );
\wr_gray_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_next(3),
      Q => wr_gray_ptr(3)
    );
\wr_gray_ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_bin_next(4),
      Q => wr_gray_ptr(4)
    );
\wr_gray_sync1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_ptr(0),
      Q => wr_gray_sync1(0)
    );
\wr_gray_sync1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_ptr(1),
      Q => wr_gray_sync1(1)
    );
\wr_gray_sync1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_ptr(2),
      Q => wr_gray_sync1(2)
    );
\wr_gray_sync1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_ptr(3),
      Q => wr_gray_sync1(3)
    );
\wr_gray_sync1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_ptr(4),
      Q => wr_gray_sync1(4)
    );
\wr_gray_sync2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_sync1(0),
      Q => wr_gray_sync2(0)
    );
\wr_gray_sync2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_sync1(1),
      Q => wr_gray_sync2(1)
    );
\wr_gray_sync2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_sync1(2),
      Q => wr_gray_sync2(2)
    );
\wr_gray_sync2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
      D => wr_gray_sync1(3),
      Q => wr_gray_sync2(3)
    );
\wr_gray_sync2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \rd_bin_ptr_reg[2]_0\,
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
    rd_data : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_curr_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_af_rd_en_reg0 : out STD_LOGIC;
    clk_200MHz : in STD_LOGIC;
    \wr_bin_ptr_reg[3]_0\ : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    result_reg_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tready : in STD_LOGIC;
    \rd_gray_ptr_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reg1_wr_pulse : in STD_LOGIC;
    \result_reg_reg[29]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_6\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_7\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_8\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_9\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_10\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_11\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_12\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_13\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_14\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_reg_0_15_28_33_i_2__0_15\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mac_in_valid_reg : in STD_LOGIC;
    rx_af_empty : in STD_LOGIC;
    \wr_gray_ptr_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_async_fifo_0 : entity is "async_fifo";
end ps_pl_system_top_system_level_0_3_async_fifo_0;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_async_fifo_0 is
  signal m_axis_tvalid_INST_0_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_33_i_10_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_33_i_11_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_33_i_12_n_0 : STD_LOGIC;
  signal \mem_reg_0_15_28_33_i_2__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_28_33_i_3__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_28_33_i_4__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_28_33_i_5__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_28_33_i_6__0_n_0\ : STD_LOGIC;
  signal mem_reg_0_15_28_33_i_7_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_33_i_8_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_33_i_9_n_0 : STD_LOGIC;
  signal \p_0_in__0__0\ : STD_LOGIC;
  signal rd_bin_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_bin_ptr_reg_rep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_gray_ptr[3]_i_2_n_0\ : STD_LOGIC;
  signal \rd_gray_ptr[3]_i_3_n_0\ : STD_LOGIC;
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
  signal tx_af_empty : STD_LOGIC;
  signal tx_af_full : STD_LOGIC;
  signal tx_af_out_data : STD_LOGIC_VECTOR ( 33 to 33 );
  signal wr_bin_next : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \wr_bin_next__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wr_bin_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_bin_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal wr_gray_next : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0_i_1 : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_13 : label is 544;
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
  attribute RTL_RAM_BITS of mem_reg_0_15_14_27 : label is 544;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_27 : label is "accelerator_inst/tx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_27 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_14_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_27 : label is 15;
  attribute ram_offset of mem_reg_0_15_14_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_27 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15_28_33 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15_28_33 : label is 544;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_33 : label is "accelerator_inst/tx_cdc_fifo/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_33 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15_28_33 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_33 : label is 15;
  attribute ram_offset of mem_reg_0_15_28_33 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_33 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_33 : label is 33;
  attribute SOFT_HLUTNM of \rd_bin_ptr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_bin_ptr[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_bin_ptr[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rd_gray_ptr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_gray_ptr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rd_gray_ptr[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rd_gray_ptr[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rd_gray_ptr[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_bin_ptr[1]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wr_bin_ptr[2]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_bin_ptr[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_gray_ptr[0]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wr_gray_ptr[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_gray_ptr[2]_i_1__0\ : label is "soft_lutpair10";
begin
\FSM_onehot_curr_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF04FF04FF040404"
    )
        port map (
      I0 => tx_af_empty,
      I1 => Q(1),
      I2 => tx_af_out_data(33),
      I3 => reg1_wr_pulse,
      I4 => Q(0),
      I5 => Q(2),
      O => E(0)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_af_out_data(33),
      I1 => tx_af_empty,
      O => m_axis_tvalid
    );
m_axis_tvalid_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => m_axis_tvalid_INST_0_i_2_n_0,
      I1 => \wr_gray_sync2_reg_n_0_[1]\,
      I2 => \rd_gray_ptr_reg_n_0_[1]\,
      I3 => \wr_gray_sync2_reg_n_0_[0]\,
      I4 => \rd_gray_ptr_reg_n_0_[0]\,
      O => tx_af_empty
    );
m_axis_tvalid_INST_0_i_2: unisim.vcomponents.LUT6
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
      O => m_axis_tvalid_INST_0_i_2_n_0
    );
mem_reg_0_15_0_13: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => result_reg_reg(1 downto 0),
      DIB(1 downto 0) => result_reg_reg(3 downto 2),
      DIC(1 downto 0) => result_reg_reg(5 downto 4),
      DID(1 downto 0) => result_reg_reg(7 downto 6),
      DIE(1 downto 0) => result_reg_reg(9 downto 8),
      DIF(1 downto 0) => result_reg_reg(11 downto 10),
      DIG(1 downto 0) => result_reg_reg(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data(1 downto 0),
      DOB(1 downto 0) => rd_data(3 downto 2),
      DOC(1 downto 0) => rd_data(5 downto 4),
      DOD(1 downto 0) => rd_data(7 downto 6),
      DOE(1 downto 0) => rd_data(9 downto 8),
      DOF(1 downto 0) => rd_data(11 downto 10),
      DOG(1 downto 0) => rd_data(13 downto 12),
      DOH(1 downto 0) => NLW_mem_reg_0_15_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_200MHz,
      WE => \p_0_in__0__0\
    );
mem_reg_0_15_14_27: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => result_reg_reg(15 downto 14),
      DIB(1 downto 0) => result_reg_reg(17 downto 16),
      DIC(1 downto 0) => result_reg_reg(19 downto 18),
      DID(1 downto 0) => result_reg_reg(21 downto 20),
      DIE(1 downto 0) => result_reg_reg(23 downto 22),
      DIF(1 downto 0) => result_reg_reg(25 downto 24),
      DIG(1 downto 0) => result_reg_reg(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data(15 downto 14),
      DOB(1 downto 0) => rd_data(17 downto 16),
      DOC(1 downto 0) => rd_data(19 downto 18),
      DOD(1 downto 0) => rd_data(21 downto 20),
      DOE(1 downto 0) => rd_data(23 downto 22),
      DOF(1 downto 0) => rd_data(25 downto 24),
      DOG(1 downto 0) => rd_data(27 downto 26),
      DOH(1 downto 0) => NLW_mem_reg_0_15_14_27_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_200MHz,
      WE => \p_0_in__0__0\
    );
mem_reg_0_15_28_33: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => rd_bin_ptr_reg_rep(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3) => \wr_bin_ptr_reg_n_0_[3]\,
      ADDRH(2) => \wr_bin_ptr_reg_n_0_[2]\,
      ADDRH(1) => \wr_bin_ptr_reg_n_0_[1]\,
      ADDRH(0) => \wr_bin_ptr_reg_n_0_[0]\,
      DIA(1 downto 0) => result_reg_reg(29 downto 28),
      DIB(1 downto 0) => result_reg_reg(31 downto 30),
      DIC(1) => \mem_reg_0_15_28_33_i_2__0_n_0\,
      DIC(0) => \mem_reg_0_15_28_33_i_3__0_n_0\,
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data(29 downto 28),
      DOB(1 downto 0) => rd_data(31 downto 30),
      DOC(1) => tx_af_out_data(33),
      DOC(0) => rd_data(32),
      DOD(1 downto 0) => NLW_mem_reg_0_15_28_33_DOD_UNCONNECTED(1 downto 0),
      DOE(1 downto 0) => NLW_mem_reg_0_15_28_33_DOE_UNCONNECTED(1 downto 0),
      DOF(1 downto 0) => NLW_mem_reg_0_15_28_33_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_mem_reg_0_15_28_33_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_mem_reg_0_15_28_33_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk_200MHz,
      WE => \p_0_in__0__0\
    );
mem_reg_0_15_28_33_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_12\(0),
      I1 => \mem_reg_0_15_28_33_i_2__0_13\(0),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_14\(0),
      I5 => \mem_reg_0_15_28_33_i_2__0_15\(0),
      O => mem_reg_0_15_28_33_i_10_n_0
    );
mem_reg_0_15_28_33_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_0\(0),
      I1 => \mem_reg_0_15_28_33_i_2__0_1\(0),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_2\(0),
      I5 => \mem_reg_0_15_28_33_i_2__0_3\(0),
      O => mem_reg_0_15_28_33_i_11_n_0
    );
mem_reg_0_15_28_33_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_4\(0),
      I1 => \mem_reg_0_15_28_33_i_2__0_5\(0),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_6\(0),
      I5 => \mem_reg_0_15_28_33_i_2__0_7\(0),
      O => mem_reg_0_15_28_33_i_12_n_0
    );
\mem_reg_0_15_28_33_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAA28AAAAAAAA"
    )
        port map (
      I0 => \wr_gray_ptr_reg[4]_0\(0),
      I1 => \wr_gray_ptr_reg_n_0_[0]\,
      I2 => \rd_gray_sync2_reg_n_0_[0]\,
      I3 => \wr_gray_ptr_reg_n_0_[1]\,
      I4 => \rd_gray_sync2_reg_n_0_[1]\,
      I5 => \mem_reg_0_15_28_33_i_4__0_n_0\,
      O => \p_0_in__0__0\
    );
\mem_reg_0_15_28_33_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_5__0_n_0\,
      I1 => \mem_reg_0_15_28_33_i_6__0_n_0\,
      I2 => \result_reg_reg[29]\(3),
      I3 => \result_reg_reg[29]\(2),
      I4 => mem_reg_0_15_28_33_i_7_n_0,
      I5 => mem_reg_0_15_28_33_i_8_n_0,
      O => \mem_reg_0_15_28_33_i_2__0_n_0\
    );
\mem_reg_0_15_28_33_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => mem_reg_0_15_28_33_i_9_n_0,
      I1 => mem_reg_0_15_28_33_i_10_n_0,
      I2 => \result_reg_reg[29]\(3),
      I3 => \result_reg_reg[29]\(2),
      I4 => mem_reg_0_15_28_33_i_11_n_0,
      I5 => mem_reg_0_15_28_33_i_12_n_0,
      O => \mem_reg_0_15_28_33_i_3__0_n_0\
    );
\mem_reg_0_15_28_33_i_4__0\: unisim.vcomponents.LUT6
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
      O => \mem_reg_0_15_28_33_i_4__0_n_0\
    );
\mem_reg_0_15_28_33_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_8\(1),
      I1 => \mem_reg_0_15_28_33_i_2__0_9\(1),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_10\(1),
      I5 => \mem_reg_0_15_28_33_i_2__0_11\(1),
      O => \mem_reg_0_15_28_33_i_5__0_n_0\
    );
\mem_reg_0_15_28_33_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_12\(1),
      I1 => \mem_reg_0_15_28_33_i_2__0_13\(1),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_14\(1),
      I5 => \mem_reg_0_15_28_33_i_2__0_15\(1),
      O => \mem_reg_0_15_28_33_i_6__0_n_0\
    );
mem_reg_0_15_28_33_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_0\(1),
      I1 => \mem_reg_0_15_28_33_i_2__0_1\(1),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_2\(1),
      I5 => \mem_reg_0_15_28_33_i_2__0_3\(1),
      O => mem_reg_0_15_28_33_i_7_n_0
    );
mem_reg_0_15_28_33_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_4\(1),
      I1 => \mem_reg_0_15_28_33_i_2__0_5\(1),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_6\(1),
      I5 => \mem_reg_0_15_28_33_i_2__0_7\(1),
      O => mem_reg_0_15_28_33_i_8_n_0
    );
mem_reg_0_15_28_33_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_2__0_8\(0),
      I1 => \mem_reg_0_15_28_33_i_2__0_9\(0),
      I2 => \result_reg_reg[29]\(0),
      I3 => \result_reg_reg[29]\(1),
      I4 => \mem_reg_0_15_28_33_i_2__0_10\(0),
      I5 => \mem_reg_0_15_28_33_i_2__0_11\(0),
      O => mem_reg_0_15_28_33_i_9_n_0
    );
\rd_bin_ptr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A5A6A6A6"
    )
        port map (
      I0 => rd_bin_ptr_reg_rep(0),
      I1 => \rd_gray_ptr_reg[0]_0\,
      I2 => tx_af_empty,
      I3 => tx_af_out_data(33),
      I4 => m_axis_tready,
      O => rd_bin_next(0)
    );
\rd_bin_ptr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF7F00AA0080"
    )
        port map (
      I0 => rd_bin_ptr_reg_rep(0),
      I1 => m_axis_tready,
      I2 => tx_af_out_data(33),
      I3 => tx_af_empty,
      I4 => \rd_gray_ptr_reg[0]_0\,
      I5 => rd_bin_ptr_reg_rep(1),
      O => rd_bin_next(1)
    );
\rd_bin_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rd_gray_ptr[3]_i_2_n_0\,
      I1 => rd_bin_ptr_reg_rep(1),
      I2 => rd_bin_ptr_reg_rep(2),
      O => rd_bin_next(2)
    );
\rd_bin_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_bin_ptr_reg_rep(1),
      I1 => \rd_gray_ptr[3]_i_2_n_0\,
      I2 => rd_bin_ptr_reg_rep(2),
      I3 => rd_bin_ptr_reg_rep(3),
      O => rd_bin_next(3)
    );
\rd_bin_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(0),
      Q => rd_bin_ptr_reg_rep(0)
    );
\rd_bin_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(1),
      Q => rd_bin_ptr_reg_rep(1)
    );
\rd_bin_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(2),
      Q => rd_bin_ptr_reg_rep(2)
    );
\rd_bin_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \wr_bin_ptr_reg[3]_0\,
      D => rd_bin_next(3),
      Q => rd_bin_ptr_reg_rep(3)
    );
\rd_gray_ptr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AA55AA6A"
    )
        port map (
      I0 => rd_bin_ptr_reg_rep(1),
      I1 => m_axis_tready,
      I2 => tx_af_out_data(33),
      I3 => tx_af_empty,
      I4 => \rd_gray_ptr_reg[0]_0\,
      I5 => rd_bin_ptr_reg_rep(0),
      O => rd_gray_next(0)
    );
\rd_gray_ptr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => rd_bin_ptr_reg_rep(2),
      I1 => rd_bin_ptr_reg_rep(1),
      I2 => \rd_gray_ptr[3]_i_2_n_0\,
      O => rd_gray_next(1)
    );
\rd_gray_ptr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => rd_bin_ptr_reg_rep(3),
      I1 => rd_bin_ptr_reg_rep(2),
      I2 => rd_bin_ptr_reg_rep(1),
      I3 => \rd_gray_ptr[3]_i_2_n_0\,
      O => rd_gray_next(2)
    );
\rd_gray_ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56666666"
    )
        port map (
      I0 => \rd_gray_ptr_reg_n_0_[4]\,
      I1 => rd_bin_ptr_reg_rep(3),
      I2 => rd_bin_ptr_reg_rep(2),
      I3 => \rd_gray_ptr[3]_i_2_n_0\,
      I4 => rd_bin_ptr_reg_rep(1),
      O => rd_gray_next(3)
    );
\rd_gray_ptr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F2A2A2A00000000"
    )
        port map (
      I0 => \rd_gray_ptr_reg[0]_0\,
      I1 => \rd_gray_ptr[3]_i_3_n_0\,
      I2 => m_axis_tvalid_INST_0_i_2_n_0,
      I3 => tx_af_out_data(33),
      I4 => m_axis_tready,
      I5 => rd_bin_ptr_reg_rep(0),
      O => \rd_gray_ptr[3]_i_2_n_0\
    );
\rd_gray_ptr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \rd_gray_ptr_reg_n_0_[0]\,
      I1 => \wr_gray_sync2_reg_n_0_[0]\,
      I2 => \rd_gray_ptr_reg_n_0_[1]\,
      I3 => \wr_gray_sync2_reg_n_0_[1]\,
      O => \rd_gray_ptr[3]_i_3_n_0\
    );
\rd_gray_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_bin_ptr_reg_rep(2),
      I1 => \rd_gray_ptr[3]_i_2_n_0\,
      I2 => rd_bin_ptr_reg_rep(1),
      I3 => rd_bin_ptr_reg_rep(3),
      I4 => \rd_gray_ptr_reg_n_0_[4]\,
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
\result_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => tx_af_out_data(33),
      I1 => Q(1),
      I2 => tx_af_empty,
      O => \FSM_onehot_curr_state_reg[1]\(0)
    );
rx_af_rd_en_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => mac_in_valid_reg,
      I1 => tx_af_full,
      I2 => rx_af_empty,
      O => rx_af_rd_en_reg0
    );
rx_af_rd_en_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \mem_reg_0_15_28_33_i_4__0_n_0\,
      I1 => \rd_gray_sync2_reg_n_0_[1]\,
      I2 => \wr_gray_ptr_reg_n_0_[1]\,
      I3 => \rd_gray_sync2_reg_n_0_[0]\,
      I4 => \wr_gray_ptr_reg_n_0_[0]\,
      O => tx_af_full
    );
\wr_bin_ptr[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[0]\,
      I1 => \p_0_in__0__0\,
      O => \wr_bin_next__0\(0)
    );
\wr_bin_ptr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[0]\,
      I1 => \p_0_in__0__0\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      O => \wr_bin_next__0\(1)
    );
\wr_bin_ptr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \p_0_in__0__0\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      I3 => \wr_bin_ptr_reg_n_0_[2]\,
      O => \wr_bin_next__0\(2)
    );
\wr_bin_ptr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => \wr_bin_ptr_reg_n_0_[0]\,
      I2 => \p_0_in__0__0\,
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
      INIT => X"56"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[1]\,
      I1 => \p_0_in__0__0\,
      I2 => \wr_bin_ptr_reg_n_0_[0]\,
      O => wr_gray_next(0)
    );
\wr_gray_ptr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \wr_bin_ptr_reg_n_0_[1]\,
      I2 => \p_0_in__0__0\,
      I3 => \wr_bin_ptr_reg_n_0_[0]\,
      O => wr_gray_next(1)
    );
\wr_gray_ptr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56666666"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[3]\,
      I1 => \wr_bin_ptr_reg_n_0_[2]\,
      I2 => \wr_bin_ptr_reg_n_0_[1]\,
      I3 => \wr_bin_ptr_reg_n_0_[0]\,
      I4 => \p_0_in__0__0\,
      O => wr_gray_next(2)
    );
\wr_gray_ptr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5666666666666666"
    )
        port map (
      I0 => \wr_gray_ptr_reg_n_0_[4]\,
      I1 => \wr_bin_ptr_reg_n_0_[3]\,
      I2 => \wr_bin_ptr_reg_n_0_[2]\,
      I3 => \p_0_in__0__0\,
      I4 => \wr_bin_ptr_reg_n_0_[0]\,
      I5 => \wr_bin_ptr_reg_n_0_[1]\,
      O => wr_gray_next(3)
    );
\wr_gray_ptr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \wr_bin_ptr_reg_n_0_[2]\,
      I1 => \p_0_in__0__0\,
      I2 => \wr_bin_ptr_reg_n_0_[0]\,
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
    reg1_wr_pulse : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    \s_axis_tdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg0_reg[31]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_af_full : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    \rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_axi4_lite_slave : entity is "axi4_lite_slave";
end ps_pl_system_top_system_level_0_3_axi4_lite_slave;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_axi4_lite_slave is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  signal \reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \^reg0_reg[31]_0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \^reg1_wr_pulse\ : STD_LOGIC;
  signal reg1_wr_pulse1_out : STD_LOGIC;
  signal \rvalid02_out__0\ : STD_LOGIC;
  signal rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arready_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of awready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of bvalid_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of rvalid_i_1 : label is "soft_lutpair20";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  arready_reg_0 <= \^arready_reg_0\;
  awready_reg_0 <= \^awready_reg_0\;
  \reg0_reg[31]_0\(16 downto 0) <= \^reg0_reg[31]_0\(16 downto 0);
  reg1_wr_pulse <= \^reg1_wr_pulse\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
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
      INIT => X"00FF8080"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_bready,
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
mem_reg_0_15_0_13_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => reg1(9),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(9)
    );
mem_reg_0_15_0_13_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => reg1(8),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(8)
    );
mem_reg_0_15_0_13_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => reg1(11),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(11)
    );
mem_reg_0_15_0_13_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => reg1(10),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(10)
    );
mem_reg_0_15_0_13_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => reg1(13),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(13)
    );
mem_reg_0_15_0_13_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => reg1(12),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(12)
    );
mem_reg_0_15_0_13_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \^q\(1),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(1)
    );
mem_reg_0_15_0_13_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \^q\(0),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(0)
    );
mem_reg_0_15_0_13_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => reg1(3),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(3)
    );
mem_reg_0_15_0_13_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => reg1(2),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(2)
    );
mem_reg_0_15_0_13_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => reg1(5),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(5)
    );
mem_reg_0_15_0_13_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => reg1(4),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(4)
    );
mem_reg_0_15_0_13_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => reg1(7),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(7)
    );
mem_reg_0_15_0_13_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => reg1(6),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(6)
    );
mem_reg_0_15_14_27_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => reg1(15),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(15)
    );
mem_reg_0_15_14_27_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => reg1(22),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(22)
    );
mem_reg_0_15_14_27_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => reg1(25),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(25)
    );
mem_reg_0_15_14_27_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => reg1(24),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(24)
    );
mem_reg_0_15_14_27_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => reg1(27),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(27)
    );
mem_reg_0_15_14_27_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(26),
      I1 => reg1(26),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(26)
    );
mem_reg_0_15_14_27_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => reg1(14),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(14)
    );
mem_reg_0_15_14_27_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => reg1(17),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(17)
    );
mem_reg_0_15_14_27_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => reg1(16),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(16)
    );
mem_reg_0_15_14_27_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => reg1(19),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(19)
    );
mem_reg_0_15_14_27_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => reg1(18),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(18)
    );
mem_reg_0_15_14_27_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => reg1(21),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(21)
    );
mem_reg_0_15_14_27_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => reg1(20),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(20)
    );
mem_reg_0_15_14_27_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => reg1(23),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(23)
    );
mem_reg_0_15_28_33_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => reg1(29),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(29)
    );
mem_reg_0_15_28_33_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => reg1(28),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(28)
    );
mem_reg_0_15_28_33_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => reg1(31),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(31)
    );
mem_reg_0_15_28_33_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00C0"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => reg1(30),
      I2 => \^reg1_wr_pulse\,
      I3 => rx_af_full,
      I4 => s_axis_tvalid,
      O => \s_axis_tdata[31]\(30)
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \^reg0_reg[31]_0\(10),
      I1 => reg1(10),
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
      I0 => \^reg0_reg[31]_0\(11),
      I1 => reg1(11),
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
      I0 => \^reg0_reg[31]_0\(12),
      I1 => reg1(12),
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
      I0 => \^reg0_reg[31]_0\(13),
      I1 => reg1(13),
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
      I0 => \^reg0_reg[31]_0\(14),
      I1 => reg1(14),
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
      I0 => \^reg0_reg[31]_0\(15),
      I1 => reg1(15),
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
      I0 => \reg0_reg_n_0_[16]\,
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
      I0 => \reg0_reg_n_0_[17]\,
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
      I0 => \reg0_reg_n_0_[18]\,
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
      I0 => \reg0_reg_n_0_[19]\,
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
      I0 => \reg0_reg_n_0_[20]\,
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
      I0 => \reg0_reg_n_0_[21]\,
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
      I0 => \reg0_reg_n_0_[22]\,
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
      I0 => \reg0_reg_n_0_[23]\,
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
      I0 => \reg0_reg_n_0_[24]\,
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
      I0 => \reg0_reg_n_0_[25]\,
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
      I0 => \reg0_reg_n_0_[26]\,
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
      I0 => \reg0_reg_n_0_[27]\,
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
      I0 => \reg0_reg_n_0_[28]\,
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
      I0 => \reg0_reg_n_0_[29]\,
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
      I0 => \^reg0_reg[31]_0\(2),
      I1 => reg1(2),
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
      I0 => \reg0_reg_n_0_[30]\,
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
      I0 => \^reg0_reg[31]_0\(16),
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
      I0 => \^reg0_reg[31]_0\(3),
      I1 => reg1(3),
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
      I0 => \^reg0_reg[31]_0\(4),
      I1 => reg1(4),
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
      I0 => \^reg0_reg[31]_0\(5),
      I1 => reg1(5),
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
      I0 => \^reg0_reg[31]_0\(6),
      I1 => reg1(6),
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
      I0 => \^reg0_reg[31]_0\(7),
      I1 => reg1(7),
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
      I0 => \^reg0_reg[31]_0\(8),
      I1 => reg1(8),
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
      I0 => \^reg0_reg[31]_0\(9),
      I1 => reg1(9),
      I2 => \rdata_reg[31]_0\(7),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \rdata[9]_i_1_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => D(0),
      Q => s_axi_rdata(0)
    );
\rdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10)
    );
\rdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11)
    );
\rdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12)
    );
\rdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13)
    );
\rdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14)
    );
\rdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15)
    );
\rdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16)
    );
\rdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17)
    );
\rdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18)
    );
\rdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19)
    );
\rdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => D(1),
      Q => s_axi_rdata(1)
    );
\rdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20)
    );
\rdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21)
    );
\rdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22)
    );
\rdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23)
    );
\rdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24)
    );
\rdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25)
    );
\rdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26)
    );
\rdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27)
    );
\rdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28)
    );
\rdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29)
    );
\rdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2)
    );
\rdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(30)
    );
\rdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[31]_i_1_n_0\,
      Q => s_axi_rdata(31)
    );
\rdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3)
    );
\rdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4)
    );
\rdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5)
    );
\rdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6)
    );
\rdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7)
    );
\rdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8)
    );
\rdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \rvalid02_out__0\,
      CLR => awready_i_2_n_0,
      D => \rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9)
    );
\reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_wstrb(1),
      I5 => s_axi_awaddr(0),
      O => \reg0[15]_i_1_n_0\
    );
\reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_wstrb(2),
      I5 => s_axi_awaddr(0),
      O => \reg0[23]_i_1_n_0\
    );
\reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_wstrb(3),
      I5 => s_axi_awaddr(0),
      O => \reg0[31]_i_1_n_0\
    );
\reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_wstrb(0),
      I5 => s_axi_awaddr(0),
      O => \reg0[7]_i_1_n_0\
    );
\reg0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => \^reg0_reg[31]_0\(0)
    );
\reg0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => \^reg0_reg[31]_0\(10)
    );
\reg0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => \^reg0_reg[31]_0\(11)
    );
\reg0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => \^reg0_reg[31]_0\(12)
    );
\reg0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => \^reg0_reg[31]_0\(13)
    );
\reg0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => \^reg0_reg[31]_0\(14)
    );
\reg0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => \^reg0_reg[31]_0\(15)
    );
\reg0_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(16),
      Q => \reg0_reg_n_0_[16]\
    );
\reg0_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(17),
      Q => \reg0_reg_n_0_[17]\
    );
\reg0_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(18),
      Q => \reg0_reg_n_0_[18]\
    );
\reg0_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(19),
      Q => \reg0_reg_n_0_[19]\
    );
\reg0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => \^reg0_reg[31]_0\(1)
    );
\reg0_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(20),
      Q => \reg0_reg_n_0_[20]\
    );
\reg0_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(21),
      Q => \reg0_reg_n_0_[21]\
    );
\reg0_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(22),
      Q => \reg0_reg_n_0_[22]\
    );
\reg0_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[23]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(23),
      Q => \reg0_reg_n_0_[23]\
    );
\reg0_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(24),
      Q => \reg0_reg_n_0_[24]\
    );
\reg0_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(25),
      Q => \reg0_reg_n_0_[25]\
    );
\reg0_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(26),
      Q => \reg0_reg_n_0_[26]\
    );
\reg0_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(27),
      Q => \reg0_reg_n_0_[27]\
    );
\reg0_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(28),
      Q => \reg0_reg_n_0_[28]\
    );
\reg0_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(29),
      Q => \reg0_reg_n_0_[29]\
    );
\reg0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => \^reg0_reg[31]_0\(2)
    );
\reg0_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(30),
      Q => \reg0_reg_n_0_[30]\
    );
\reg0_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[31]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(31),
      Q => \^reg0_reg[31]_0\(16)
    );
\reg0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => \^reg0_reg[31]_0\(3)
    );
\reg0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => \^reg0_reg[31]_0\(4)
    );
\reg0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => \^reg0_reg[31]_0\(5)
    );
\reg0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => \^reg0_reg[31]_0\(6)
    );
\reg0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => \^reg0_reg[31]_0\(7)
    );
\reg0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => \^reg0_reg[31]_0\(8)
    );
\reg0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg0[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => \^reg0_reg[31]_0\(9)
    );
\reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_wstrb(1),
      O => \reg1[15]_i_1_n_0\
    );
\reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_wstrb(2),
      O => \reg1[23]_i_1_n_0\
    );
\reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_wstrb(3),
      O => \reg1[31]_i_1_n_0\
    );
\reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_wstrb(0),
      O => \reg1[7]_i_1_n_0\
    );
\reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => \^q\(0)
    );
\reg1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => reg1(10)
    );
\reg1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => reg1(11)
    );
\reg1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => reg1(12)
    );
\reg1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => reg1(13)
    );
\reg1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => reg1(14)
    );
\reg1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => reg1(15)
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
      Q => \^q\(1)
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
      Q => reg1(2)
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
      Q => reg1(3)
    );
\reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => reg1(4)
    );
\reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => reg1(5)
    );
\reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => reg1(6)
    );
\reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[7]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => reg1(7)
    );
\reg1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => reg1(8)
    );
\reg1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \reg1[15]_i_1_n_0\,
      CLR => awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => reg1(9)
    );
reg1_wr_pulse_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(0),
      I2 => \^awready_reg_0\,
      I3 => s_axi_awvalid,
      I4 => s_axi_wvalid,
      O => reg1_wr_pulse1_out
    );
reg1_wr_pulse_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => awready_i_2_n_0,
      D => reg1_wr_pulse1_out,
      Q => \^reg1_wr_pulse\
    );
rvalid02_out: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid\,
      I2 => \^arready_reg_0\,
      O => \rvalid02_out__0\
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
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    result_reg_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_200MHz : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    rd_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \result_reg_reg[0]_0\ : in STD_LOGIC;
    mac_in_valid_reg : in STD_LOGIC;
    \result_reg_reg[31]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_pipelined_mac : entity is "pipelined_mac";
end ps_pl_system_top_system_level_0_3_pipelined_mac;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_pipelined_mac is
  signal clr_at_stage1 : STD_LOGIC;
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
  signal out_valid_i_1_n_0 : STD_LOGIC;
  signal \result_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg[24]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_9_n_0\ : STD_LOGIC;
  signal \^result_reg_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  result_reg_reg(31 downto 0) <= \^result_reg_reg\(31 downto 0);
clr_at_stage1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \result_reg_reg[0]_0\,
      D => Q(16),
      Q => clr_at_stage1
    );
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
out_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => clr_at_stage1,
      I1 => valid_stage1,
      O => out_valid_i_1_n_0
    );
out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => '1',
      CLR => \result_reg_reg[0]_0\,
      D => out_valid_i_1_n_0,
      Q => E(0)
    );
\result_reg[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(7),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_98,
      O => \result_reg[0]_i_10_n_0\
    );
\result_reg[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(6),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_99,
      O => \result_reg[0]_i_11_n_0\
    );
\result_reg[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(5),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_100,
      O => \result_reg[0]_i_12_n_0\
    );
\result_reg[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(4),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_101,
      O => \result_reg[0]_i_13_n_0\
    );
\result_reg[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(3),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_102,
      O => \result_reg[0]_i_14_n_0\
    );
\result_reg[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(2),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_103,
      O => \result_reg[0]_i_15_n_0\
    );
\result_reg[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(1),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_104,
      O => \result_reg[0]_i_16_n_0\
    );
\result_reg[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(0),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_105,
      O => \result_reg[0]_i_17_n_0\
    );
\result_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_98,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_2_n_0\
    );
\result_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_99,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_3_n_0\
    );
\result_reg[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_100,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_4_n_0\
    );
\result_reg[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_101,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_5_n_0\
    );
\result_reg[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_102,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_6_n_0\
    );
\result_reg[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_103,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_7_n_0\
    );
\result_reg[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_104,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_8_n_0\
    );
\result_reg[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_105,
      I2 => clr_at_stage1,
      O => \result_reg[0]_i_9_n_0\
    );
\result_reg[16]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(23),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_82,
      O => \result_reg[16]_i_10_n_0\
    );
\result_reg[16]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(22),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_83,
      O => \result_reg[16]_i_11_n_0\
    );
\result_reg[16]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(21),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_84,
      O => \result_reg[16]_i_12_n_0\
    );
\result_reg[16]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(20),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_85,
      O => \result_reg[16]_i_13_n_0\
    );
\result_reg[16]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(19),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_86,
      O => \result_reg[16]_i_14_n_0\
    );
\result_reg[16]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(18),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_87,
      O => \result_reg[16]_i_15_n_0\
    );
\result_reg[16]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(17),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_88,
      O => \result_reg[16]_i_16_n_0\
    );
\result_reg[16]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(16),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_89,
      O => \result_reg[16]_i_17_n_0\
    );
\result_reg[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_82,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_2_n_0\
    );
\result_reg[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_83,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_3_n_0\
    );
\result_reg[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_84,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_4_n_0\
    );
\result_reg[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_85,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_5_n_0\
    );
\result_reg[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_86,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_6_n_0\
    );
\result_reg[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_87,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_7_n_0\
    );
\result_reg[16]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_88,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_8_n_0\
    );
\result_reg[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_89,
      I2 => clr_at_stage1,
      O => \result_reg[16]_i_9_n_0\
    );
\result_reg[24]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(30),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_75,
      O => \result_reg[24]_i_10_n_0\
    );
\result_reg[24]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(29),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_76,
      O => \result_reg[24]_i_11_n_0\
    );
\result_reg[24]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(28),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_77,
      O => \result_reg[24]_i_12_n_0\
    );
\result_reg[24]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(27),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_78,
      O => \result_reg[24]_i_13_n_0\
    );
\result_reg[24]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(26),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_79,
      O => \result_reg[24]_i_14_n_0\
    );
\result_reg[24]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(25),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_80,
      O => \result_reg[24]_i_15_n_0\
    );
\result_reg[24]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(24),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_81,
      O => \result_reg[24]_i_16_n_0\
    );
\result_reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_75,
      I2 => clr_at_stage1,
      O => \result_reg[24]_i_2_n_0\
    );
\result_reg[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_76,
      I2 => clr_at_stage1,
      O => \result_reg[24]_i_3_n_0\
    );
\result_reg[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_77,
      I2 => clr_at_stage1,
      O => \result_reg[24]_i_4_n_0\
    );
\result_reg[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_78,
      I2 => clr_at_stage1,
      O => \result_reg[24]_i_5_n_0\
    );
\result_reg[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_79,
      I2 => clr_at_stage1,
      O => \result_reg[24]_i_6_n_0\
    );
\result_reg[24]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_80,
      I2 => clr_at_stage1,
      O => \result_reg[24]_i_7_n_0\
    );
\result_reg[24]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_81,
      I2 => clr_at_stage1,
      O => \result_reg[24]_i_8_n_0\
    );
\result_reg[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(31),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_74,
      O => \result_reg[24]_i_9_n_0\
    );
\result_reg[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(15),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_90,
      O => \result_reg[8]_i_10_n_0\
    );
\result_reg[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(14),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_91,
      O => \result_reg[8]_i_11_n_0\
    );
\result_reg[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(13),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_92,
      O => \result_reg[8]_i_12_n_0\
    );
\result_reg[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(12),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_93,
      O => \result_reg[8]_i_13_n_0\
    );
\result_reg[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(11),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_94,
      O => \result_reg[8]_i_14_n_0\
    );
\result_reg[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(10),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_95,
      O => \result_reg[8]_i_15_n_0\
    );
\result_reg[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(9),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_96,
      O => \result_reg[8]_i_16_n_0\
    );
\result_reg[8]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D222"
    )
        port map (
      I0 => \^result_reg_reg\(8),
      I1 => clr_at_stage1,
      I2 => \result_reg_reg[31]_0\,
      I3 => mult_reg0_n_97,
      O => \result_reg[8]_i_17_n_0\
    );
\result_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_90,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_2_n_0\
    );
\result_reg[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_91,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_3_n_0\
    );
\result_reg[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_92,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_4_n_0\
    );
\result_reg[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_93,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_5_n_0\
    );
\result_reg[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_94,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_6_n_0\
    );
\result_reg[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_95,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_7_n_0\
    );
\result_reg[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_96,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_8_n_0\
    );
\result_reg[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \result_reg_reg[31]_0\,
      I1 => mult_reg0_n_97,
      I2 => clr_at_stage1,
      O => \result_reg[8]_i_9_n_0\
    );
\result_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_15\,
      Q => \^result_reg_reg\(0)
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
      DI(7) => \result_reg[0]_i_2_n_0\,
      DI(6) => \result_reg[0]_i_3_n_0\,
      DI(5) => \result_reg[0]_i_4_n_0\,
      DI(4) => \result_reg[0]_i_5_n_0\,
      DI(3) => \result_reg[0]_i_6_n_0\,
      DI(2) => \result_reg[0]_i_7_n_0\,
      DI(1) => \result_reg[0]_i_8_n_0\,
      DI(0) => \result_reg[0]_i_9_n_0\,
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
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_13\,
      Q => \^result_reg_reg\(10)
    );
\result_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_12\,
      Q => \^result_reg_reg\(11)
    );
\result_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_11\,
      Q => \^result_reg_reg\(12)
    );
\result_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_10\,
      Q => \^result_reg_reg\(13)
    );
\result_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_9\,
      Q => \^result_reg_reg\(14)
    );
\result_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_8\,
      Q => \^result_reg_reg\(15)
    );
\result_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_15\,
      Q => \^result_reg_reg\(16)
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
      DI(7) => \result_reg[16]_i_2_n_0\,
      DI(6) => \result_reg[16]_i_3_n_0\,
      DI(5) => \result_reg[16]_i_4_n_0\,
      DI(4) => \result_reg[16]_i_5_n_0\,
      DI(3) => \result_reg[16]_i_6_n_0\,
      DI(2) => \result_reg[16]_i_7_n_0\,
      DI(1) => \result_reg[16]_i_8_n_0\,
      DI(0) => \result_reg[16]_i_9_n_0\,
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
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_14\,
      Q => \^result_reg_reg\(17)
    );
\result_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_13\,
      Q => \^result_reg_reg\(18)
    );
\result_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_12\,
      Q => \^result_reg_reg\(19)
    );
\result_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_14\,
      Q => \^result_reg_reg\(1)
    );
\result_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_11\,
      Q => \^result_reg_reg\(20)
    );
\result_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_10\,
      Q => \^result_reg_reg\(21)
    );
\result_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_9\,
      Q => \^result_reg_reg\(22)
    );
\result_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[16]_i_1_n_8\,
      Q => \^result_reg_reg\(23)
    );
\result_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_15\,
      Q => \^result_reg_reg\(24)
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
      DI(6) => \result_reg[24]_i_2_n_0\,
      DI(5) => \result_reg[24]_i_3_n_0\,
      DI(4) => \result_reg[24]_i_4_n_0\,
      DI(3) => \result_reg[24]_i_5_n_0\,
      DI(2) => \result_reg[24]_i_6_n_0\,
      DI(1) => \result_reg[24]_i_7_n_0\,
      DI(0) => \result_reg[24]_i_8_n_0\,
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
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_14\,
      Q => \^result_reg_reg\(25)
    );
\result_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_13\,
      Q => \^result_reg_reg\(26)
    );
\result_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_12\,
      Q => \^result_reg_reg\(27)
    );
\result_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_11\,
      Q => \^result_reg_reg\(28)
    );
\result_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_10\,
      Q => \^result_reg_reg\(29)
    );
\result_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_13\,
      Q => \^result_reg_reg\(2)
    );
\result_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_9\,
      Q => \^result_reg_reg\(30)
    );
\result_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[24]_i_1_n_8\,
      Q => \^result_reg_reg\(31)
    );
\result_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_12\,
      Q => \^result_reg_reg\(3)
    );
\result_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_11\,
      Q => \^result_reg_reg\(4)
    );
\result_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_10\,
      Q => \^result_reg_reg\(5)
    );
\result_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_9\,
      Q => \^result_reg_reg\(6)
    );
\result_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[0]_i_1_n_8\,
      Q => \^result_reg_reg\(7)
    );
\result_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_15\,
      Q => \^result_reg_reg\(8)
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
      DI(7) => \result_reg[8]_i_2_n_0\,
      DI(6) => \result_reg[8]_i_3_n_0\,
      DI(5) => \result_reg[8]_i_4_n_0\,
      DI(4) => \result_reg[8]_i_5_n_0\,
      DI(3) => \result_reg[8]_i_6_n_0\,
      DI(2) => \result_reg[8]_i_7_n_0\,
      DI(1) => \result_reg[8]_i_8_n_0\,
      DI(0) => \result_reg[8]_i_9_n_0\,
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
      CE => out_valid_i_1_n_0,
      CLR => \result_reg_reg[0]_0\,
      D => \result_reg_reg[8]_i_1_n_14\,
      Q => \^result_reg_reg\(9)
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
    rx_af_full : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 32 downto 0 );
    clk_200MHz : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_100MHz : in STD_LOGIC;
    reg1_wr_pulse : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    \track_mem_reg[0][1]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    \result_reg_reg[31]_1\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdata_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_top_stream_acc : entity is "top_stream_acc";
end ps_pl_system_top_system_level_0_3_top_stream_acc;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_top_stream_acc is
  signal \FSM_onehot_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal mac_in_valid_reg : STD_LOGIC;
  signal mac_out_valid : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rd_data\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal reg2_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal result_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal result_reg_0 : STD_LOGIC;
  signal result_reg_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_af_empty : STD_LOGIC;
  signal rx_af_rd_en_reg0 : STD_LOGIC;
  signal rx_cdc_fifo_n_10 : STD_LOGIC;
  signal rx_cdc_fifo_n_11 : STD_LOGIC;
  signal rx_cdc_fifo_n_12 : STD_LOGIC;
  signal rx_cdc_fifo_n_13 : STD_LOGIC;
  signal rx_cdc_fifo_n_14 : STD_LOGIC;
  signal rx_cdc_fifo_n_15 : STD_LOGIC;
  signal rx_cdc_fifo_n_16 : STD_LOGIC;
  signal rx_cdc_fifo_n_17 : STD_LOGIC;
  signal rx_cdc_fifo_n_18 : STD_LOGIC;
  signal rx_cdc_fifo_n_19 : STD_LOGIC;
  signal rx_cdc_fifo_n_20 : STD_LOGIC;
  signal rx_cdc_fifo_n_5 : STD_LOGIC;
  signal rx_cdc_fifo_n_6 : STD_LOGIC;
  signal rx_cdc_fifo_n_7 : STD_LOGIC;
  signal rx_cdc_fifo_n_8 : STD_LOGIC;
  signal rx_cdc_fifo_n_9 : STD_LOGIC;
  signal \^sys_rst_n_0\ : STD_LOGIC;
  signal \track_mem[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[10][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[11][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[12][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[13][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[14][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[15][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[8][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem[9][1]_i_1_n_0\ : STD_LOGIC;
  signal \track_mem_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[10]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[11]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[12]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[13]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[14]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[15]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[3]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[4]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[5]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[6]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[7]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[8]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \track_mem_reg[9]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal track_rd_ptr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \track_wr_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal track_wr_ptr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_af_rd_en_reg_reg_n_0 : STD_LOGIC;
  signal tx_cdc_fifo_n_34 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "IDLE_ST:001,PROC_ST:010,DONE_ST:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "IDLE_ST:001,PROC_ST:010,DONE_ST:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "IDLE_ST:001,PROC_ST:010,DONE_ST:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \track_rd_ptr[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \track_rd_ptr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \track_rd_ptr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \track_rd_ptr[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \track_wr_ptr[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \track_wr_ptr[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \track_wr_ptr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \track_wr_ptr[3]_i_1\ : label is "soft_lutpair15";
begin
  rd_data(32 downto 0) <= \^rd_data\(32 downto 0);
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
      CE => tx_cdc_fifo_n_34,
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
      CE => tx_cdc_fifo_n_34,
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
      CE => tx_cdc_fifo_n_34,
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
      I5 => \rdata_reg[1]\(0),
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
      I5 => \rdata_reg[1]\(1),
      O => D(1)
    );
\result_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(0),
      Q => result_reg(0)
    );
\result_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(10),
      Q => \result_reg_reg[31]_0\(8)
    );
\result_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(11),
      Q => \result_reg_reg[31]_0\(9)
    );
\result_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(12),
      Q => \result_reg_reg[31]_0\(10)
    );
\result_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(13),
      Q => \result_reg_reg[31]_0\(11)
    );
\result_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(14),
      Q => \result_reg_reg[31]_0\(12)
    );
\result_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(15),
      Q => \result_reg_reg[31]_0\(13)
    );
\result_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(16),
      Q => \result_reg_reg[31]_0\(14)
    );
\result_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(17),
      Q => \result_reg_reg[31]_0\(15)
    );
\result_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(18),
      Q => \result_reg_reg[31]_0\(16)
    );
\result_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(19),
      Q => \result_reg_reg[31]_0\(17)
    );
\result_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(1),
      Q => result_reg(1)
    );
\result_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(20),
      Q => \result_reg_reg[31]_0\(18)
    );
\result_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(21),
      Q => \result_reg_reg[31]_0\(19)
    );
\result_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(22),
      Q => \result_reg_reg[31]_0\(20)
    );
\result_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(23),
      Q => \result_reg_reg[31]_0\(21)
    );
\result_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(24),
      Q => \result_reg_reg[31]_0\(22)
    );
\result_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(25),
      Q => \result_reg_reg[31]_0\(23)
    );
\result_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(26),
      Q => \result_reg_reg[31]_0\(24)
    );
\result_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(27),
      Q => \result_reg_reg[31]_0\(25)
    );
\result_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(28),
      Q => \result_reg_reg[31]_0\(26)
    );
\result_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(29),
      Q => \result_reg_reg[31]_0\(27)
    );
\result_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(2),
      Q => \result_reg_reg[31]_0\(0)
    );
\result_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(30),
      Q => \result_reg_reg[31]_0\(28)
    );
\result_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(31),
      Q => \result_reg_reg[31]_0\(29)
    );
\result_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(3),
      Q => \result_reg_reg[31]_0\(1)
    );
\result_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(4),
      Q => \result_reg_reg[31]_0\(2)
    );
\result_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(5),
      Q => \result_reg_reg[31]_0\(3)
    );
\result_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(6),
      Q => \result_reg_reg[31]_0\(4)
    );
\result_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(7),
      Q => \result_reg_reg[31]_0\(5)
    );
\result_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(8),
      Q => \result_reg_reg[31]_0\(6)
    );
\result_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => result_reg_0,
      CLR => \^sys_rst_n_0\,
      D => \^rd_data\(9),
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
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      mac_in_valid_reg => mac_in_valid_reg,
      \rd_bin_ptr_reg[2]_0\ => \^sys_rst_n_0\,
      rd_data(17 downto 16) => p_1_in(1 downto 0),
      rd_data(15) => rx_cdc_fifo_n_5,
      rd_data(14) => rx_cdc_fifo_n_6,
      rd_data(13) => rx_cdc_fifo_n_7,
      rd_data(12) => rx_cdc_fifo_n_8,
      rd_data(11) => rx_cdc_fifo_n_9,
      rd_data(10) => rx_cdc_fifo_n_10,
      rd_data(9) => rx_cdc_fifo_n_11,
      rd_data(8) => rx_cdc_fifo_n_12,
      rd_data(7) => rx_cdc_fifo_n_13,
      rd_data(6) => rx_cdc_fifo_n_14,
      rd_data(5) => rx_cdc_fifo_n_15,
      rd_data(4) => rx_cdc_fifo_n_16,
      rd_data(3) => rx_cdc_fifo_n_17,
      rd_data(2) => rx_cdc_fifo_n_18,
      rd_data(1) => rx_cdc_fifo_n_19,
      rd_data(0) => rx_cdc_fifo_n_20,
      \rd_gray_sync2_reg[1]_0\ => rx_af_full,
      reg1_wr_pulse => reg1_wr_pulse,
      rx_af_empty => rx_af_empty,
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      \track_mem_reg[0][1]\(31 downto 0) => \track_mem_reg[0][1]_0\(31 downto 0)
    );
\track_mem[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => mac_in_valid_reg,
      I1 => sys_rst_n,
      I2 => track_wr_ptr_reg(1),
      I3 => track_wr_ptr_reg(0),
      I4 => track_wr_ptr_reg(3),
      I5 => track_wr_ptr_reg(2),
      O => \track_mem[0][1]_i_1_n_0\
    );
\track_mem[10][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[10][1]_i_1_n_0\
    );
\track_mem[11][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[11][1]_i_1_n_0\
    );
\track_mem[12][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[12][1]_i_1_n_0\
    );
\track_mem[13][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(1),
      I5 => track_wr_ptr_reg(0),
      O => \track_mem[13][1]_i_1_n_0\
    );
\track_mem[14][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[14][1]_i_1_n_0\
    );
\track_mem[15][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[15][1]_i_1_n_0\
    );
\track_mem[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => mac_in_valid_reg,
      I1 => sys_rst_n,
      I2 => track_wr_ptr_reg(0),
      I3 => track_wr_ptr_reg(1),
      I4 => track_wr_ptr_reg(3),
      I5 => track_wr_ptr_reg(2),
      O => \track_mem[1][1]_i_1_n_0\
    );
\track_mem[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => mac_in_valid_reg,
      I1 => sys_rst_n,
      I2 => track_wr_ptr_reg(1),
      I3 => track_wr_ptr_reg(0),
      I4 => track_wr_ptr_reg(3),
      I5 => track_wr_ptr_reg(2),
      O => \track_mem[2][1]_i_1_n_0\
    );
\track_mem[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => track_wr_ptr_reg(1),
      I2 => track_wr_ptr_reg(0),
      I3 => track_wr_ptr_reg(2),
      I4 => mac_in_valid_reg,
      I5 => sys_rst_n,
      O => \track_mem[3][1]_i_1_n_0\
    );
\track_mem[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[4][1]_i_1_n_0\
    );
\track_mem[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(1),
      I5 => track_wr_ptr_reg(0),
      O => \track_mem[5][1]_i_1_n_0\
    );
\track_mem[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[6][1]_i_1_n_0\
    );
\track_mem[7][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[7][1]_i_1_n_0\
    );
\track_mem[8][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(0),
      I5 => track_wr_ptr_reg(1),
      O => \track_mem[8][1]_i_1_n_0\
    );
\track_mem[9][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => track_wr_ptr_reg(3),
      I1 => sys_rst_n,
      I2 => mac_in_valid_reg,
      I3 => track_wr_ptr_reg(2),
      I4 => track_wr_ptr_reg(1),
      I5 => track_wr_ptr_reg(0),
      O => \track_mem[9][1]_i_1_n_0\
    );
\track_mem_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[0][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[0]\(0),
      R => '0'
    );
\track_mem_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[0][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[0]\(1),
      R => '0'
    );
\track_mem_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[10][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[10]\(0),
      R => '0'
    );
\track_mem_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[10][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[10]\(1),
      R => '0'
    );
\track_mem_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[11][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[11]\(0),
      R => '0'
    );
\track_mem_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[11][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[11]\(1),
      R => '0'
    );
\track_mem_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[12][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[12]\(0),
      R => '0'
    );
\track_mem_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[12][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[12]\(1),
      R => '0'
    );
\track_mem_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[13][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[13]\(0),
      R => '0'
    );
\track_mem_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[13][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[13]\(1),
      R => '0'
    );
\track_mem_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[14][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[14]\(0),
      R => '0'
    );
\track_mem_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[14][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[14]\(1),
      R => '0'
    );
\track_mem_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[15][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[15]\(0),
      R => '0'
    );
\track_mem_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[15][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[15]\(1),
      R => '0'
    );
\track_mem_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[1][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[1]\(0),
      R => '0'
    );
\track_mem_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[1][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[1]\(1),
      R => '0'
    );
\track_mem_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[2][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[2]\(0),
      R => '0'
    );
\track_mem_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[2][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[2]\(1),
      R => '0'
    );
\track_mem_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[3][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[3]\(0),
      R => '0'
    );
\track_mem_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[3][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[3]\(1),
      R => '0'
    );
\track_mem_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[4][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[4]\(0),
      R => '0'
    );
\track_mem_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[4][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[4]\(1),
      R => '0'
    );
\track_mem_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[5][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[5]\(0),
      R => '0'
    );
\track_mem_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[5][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[5]\(1),
      R => '0'
    );
\track_mem_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[6][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[6]\(0),
      R => '0'
    );
\track_mem_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[6][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[6]\(1),
      R => '0'
    );
\track_mem_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[7][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[7]\(0),
      R => '0'
    );
\track_mem_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[7][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[7]\(1),
      R => '0'
    );
\track_mem_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[8][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[8]\(0),
      R => '0'
    );
\track_mem_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[8][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[8]\(1),
      R => '0'
    );
\track_mem_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[9][1]_i_1_n_0\,
      D => p_1_in(0),
      Q => \track_mem_reg[9]\(0),
      R => '0'
    );
\track_mem_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_200MHz,
      CE => \track_mem[9][1]_i_1_n_0\,
      D => p_1_in(1),
      Q => \track_mem_reg[9]\(1),
      R => '0'
    );
\track_rd_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => track_rd_ptr_reg(0),
      O => \p_0_in__0\(0)
    );
\track_rd_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => track_rd_ptr_reg(1),
      I1 => track_rd_ptr_reg(0),
      O => \p_0_in__0\(1)
    );
\track_rd_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => track_rd_ptr_reg(0),
      I1 => track_rd_ptr_reg(1),
      I2 => track_rd_ptr_reg(2),
      O => \p_0_in__0\(2)
    );
\track_rd_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => track_rd_ptr_reg(1),
      I1 => track_rd_ptr_reg(0),
      I2 => track_rd_ptr_reg(2),
      I3 => track_rd_ptr_reg(3),
      O => \p_0_in__0\(3)
    );
\track_rd_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_out_valid,
      CLR => \^sys_rst_n_0\,
      D => \p_0_in__0\(0),
      Q => track_rd_ptr_reg(0)
    );
\track_rd_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_out_valid,
      CLR => \^sys_rst_n_0\,
      D => \p_0_in__0\(1),
      Q => track_rd_ptr_reg(1)
    );
\track_rd_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_out_valid,
      CLR => \^sys_rst_n_0\,
      D => \p_0_in__0\(2),
      Q => track_rd_ptr_reg(2)
    );
\track_rd_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_out_valid,
      CLR => \^sys_rst_n_0\,
      D => \p_0_in__0\(3),
      Q => track_rd_ptr_reg(3)
    );
\track_wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => track_wr_ptr_reg(0),
      O => \track_wr_ptr[0]_i_1_n_0\
    );
\track_wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => track_wr_ptr_reg(1),
      I1 => track_wr_ptr_reg(0),
      O => p_0_in(1)
    );
\track_wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => track_wr_ptr_reg(2),
      I1 => track_wr_ptr_reg(0),
      I2 => track_wr_ptr_reg(1),
      O => p_0_in(2)
    );
\track_wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => track_wr_ptr_reg(1),
      I1 => track_wr_ptr_reg(0),
      I2 => track_wr_ptr_reg(2),
      I3 => track_wr_ptr_reg(3),
      O => p_0_in(3)
    );
\track_wr_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_in_valid_reg,
      CLR => \^sys_rst_n_0\,
      D => \track_wr_ptr[0]_i_1_n_0\,
      Q => track_wr_ptr_reg(0)
    );
\track_wr_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_in_valid_reg,
      CLR => \^sys_rst_n_0\,
      D => p_0_in(1),
      Q => track_wr_ptr_reg(1)
    );
\track_wr_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_in_valid_reg,
      CLR => \^sys_rst_n_0\,
      D => p_0_in(2),
      Q => track_wr_ptr_reg(2)
    );
\track_wr_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_200MHz,
      CE => mac_in_valid_reg,
      CLR => \^sys_rst_n_0\,
      D => p_0_in(3),
      Q => track_wr_ptr_reg(3)
    );
tx_af_rd_en_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_100MHz,
      CE => '1',
      CLR => \^sys_rst_n_0\,
      D => result_reg_0,
      Q => tx_af_rd_en_reg_reg_n_0
    );
tx_cdc_fifo: entity work.ps_pl_system_top_system_level_0_3_async_fifo_0
     port map (
      E(0) => tx_cdc_fifo_n_34,
      \FSM_onehot_curr_state_reg[1]\(0) => result_reg_0,
      Q(2 downto 1) => reg2_status(1 downto 0),
      Q(0) => \FSM_onehot_curr_state_reg_n_0_[0]\,
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      mac_in_valid_reg => mac_in_valid_reg,
      \mem_reg_0_15_28_33_i_2__0_0\(1 downto 0) => \track_mem_reg[1]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_1\(1 downto 0) => \track_mem_reg[3]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_10\(1 downto 0) => \track_mem_reg[4]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_11\(1 downto 0) => \track_mem_reg[6]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_12\(1 downto 0) => \track_mem_reg[13]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_13\(1 downto 0) => \track_mem_reg[15]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_14\(1 downto 0) => \track_mem_reg[12]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_15\(1 downto 0) => \track_mem_reg[14]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_2\(1 downto 0) => \track_mem_reg[0]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_3\(1 downto 0) => \track_mem_reg[2]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_4\(1 downto 0) => \track_mem_reg[9]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_5\(1 downto 0) => \track_mem_reg[11]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_6\(1 downto 0) => \track_mem_reg[8]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_7\(1 downto 0) => \track_mem_reg[10]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_8\(1 downto 0) => \track_mem_reg[5]\(1 downto 0),
      \mem_reg_0_15_28_33_i_2__0_9\(1 downto 0) => \track_mem_reg[7]\(1 downto 0),
      rd_data(32 downto 0) => \^rd_data\(32 downto 0),
      \rd_gray_ptr_reg[0]_0\ => tx_af_rd_en_reg_reg_n_0,
      reg1_wr_pulse => reg1_wr_pulse,
      result_reg_reg(31 downto 0) => result_reg_reg(31 downto 0),
      \result_reg_reg[29]\(3 downto 0) => track_rd_ptr_reg(3 downto 0),
      rx_af_empty => rx_af_empty,
      rx_af_rd_en_reg0 => rx_af_rd_en_reg0,
      \wr_bin_ptr_reg[3]_0\ => \^sys_rst_n_0\,
      \wr_gray_ptr_reg[4]_0\(0) => mac_out_valid
    );
u_mac: entity work.ps_pl_system_top_system_level_0_3_pipelined_mac
     port map (
      E(0) => mac_out_valid,
      Q(16 downto 0) => Q(16 downto 0),
      clk_200MHz => clk_200MHz,
      mac_in_valid_reg => mac_in_valid_reg,
      rd_data(15) => rx_cdc_fifo_n_5,
      rd_data(14) => rx_cdc_fifo_n_6,
      rd_data(13) => rx_cdc_fifo_n_7,
      rd_data(12) => rx_cdc_fifo_n_8,
      rd_data(11) => rx_cdc_fifo_n_9,
      rd_data(10) => rx_cdc_fifo_n_10,
      rd_data(9) => rx_cdc_fifo_n_11,
      rd_data(8) => rx_cdc_fifo_n_12,
      rd_data(7) => rx_cdc_fifo_n_13,
      rd_data(6) => rx_cdc_fifo_n_14,
      rd_data(5) => rx_cdc_fifo_n_15,
      rd_data(4) => rx_cdc_fifo_n_16,
      rd_data(3) => rx_cdc_fifo_n_17,
      rd_data(2) => rx_cdc_fifo_n_18,
      rd_data(1) => rx_cdc_fifo_n_19,
      rd_data(0) => rx_cdc_fifo_n_20,
      result_reg_reg(31 downto 0) => result_reg_reg(31 downto 0),
      \result_reg_reg[0]_0\ => \^sys_rst_n_0\,
      \result_reg_reg[31]_0\ => \result_reg_reg[31]_1\
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
    s_axi_rready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_pl_system_top_system_level_0_3_top_system_level : entity is "top_system_level";
end ps_pl_system_top_system_level_0_3_top_system_level;

architecture STRUCTURE of ps_pl_system_top_system_level_0_3_top_system_level is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal accelerator_inst_n_0 : STD_LOGIC;
  signal accelerator_inst_n_4 : STD_LOGIC;
  signal accelerator_inst_n_5 : STD_LOGIC;
  signal axi_slave_inst_n_40 : STD_LOGIC;
  signal axi_slave_inst_n_41 : STD_LOGIC;
  signal axi_slave_inst_n_42 : STD_LOGIC;
  signal axi_slave_inst_n_43 : STD_LOGIC;
  signal axi_slave_inst_n_44 : STD_LOGIC;
  signal axi_slave_inst_n_45 : STD_LOGIC;
  signal axi_slave_inst_n_46 : STD_LOGIC;
  signal axi_slave_inst_n_47 : STD_LOGIC;
  signal axi_slave_inst_n_48 : STD_LOGIC;
  signal axi_slave_inst_n_49 : STD_LOGIC;
  signal axi_slave_inst_n_50 : STD_LOGIC;
  signal axi_slave_inst_n_51 : STD_LOGIC;
  signal axi_slave_inst_n_52 : STD_LOGIC;
  signal axi_slave_inst_n_53 : STD_LOGIC;
  signal axi_slave_inst_n_54 : STD_LOGIC;
  signal axi_slave_inst_n_55 : STD_LOGIC;
  signal in_clr : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg1_wr_pulse : STD_LOGIC;
  signal result_reg : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \result_reg_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal rx_af_full : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal wr_data : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
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
      D(1) => accelerator_inst_n_4,
      D(0) => accelerator_inst_n_5,
      Q(16) => in_clr,
      Q(15) => axi_slave_inst_n_40,
      Q(14) => axi_slave_inst_n_41,
      Q(13) => axi_slave_inst_n_42,
      Q(12) => axi_slave_inst_n_43,
      Q(11) => axi_slave_inst_n_44,
      Q(10) => axi_slave_inst_n_45,
      Q(9) => axi_slave_inst_n_46,
      Q(8) => axi_slave_inst_n_47,
      Q(7) => axi_slave_inst_n_48,
      Q(6) => axi_slave_inst_n_49,
      Q(5) => axi_slave_inst_n_50,
      Q(4) => axi_slave_inst_n_51,
      Q(3) => axi_slave_inst_n_52,
      Q(2) => axi_slave_inst_n_53,
      Q(1) => axi_slave_inst_n_54,
      Q(0) => axi_slave_inst_n_55,
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      rd_data(32) => m_axis_tlast,
      rd_data(31 downto 0) => m_axis_tdata(31 downto 0),
      \rdata_reg[1]\(1 downto 0) => reg1(1 downto 0),
      reg1_wr_pulse => reg1_wr_pulse,
      \result_reg_reg[31]_0\(29 downto 0) => result_reg(31 downto 2),
      \result_reg_reg[31]_1\ => \result_reg_reg[0]_i_18_n_0\,
      rx_af_full => rx_af_full,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      sys_rst_n => sys_rst_n,
      sys_rst_n_0 => accelerator_inst_n_0,
      \track_mem_reg[0][1]_0\(31 downto 0) => wr_data(31 downto 0)
    );
axi_slave_inst: entity work.ps_pl_system_top_system_level_0_3_axi4_lite_slave
     port map (
      D(1) => accelerator_inst_n_4,
      D(0) => accelerator_inst_n_5,
      Q(1 downto 0) => reg1(1 downto 0),
      arready_reg_0 => s_axi_arready,
      awready_reg_0 => \^s_axi_awready\,
      \rdata_reg[31]_0\(29 downto 0) => result_reg(31 downto 2),
      \reg0_reg[31]_0\(16) => in_clr,
      \reg0_reg[31]_0\(15) => axi_slave_inst_n_40,
      \reg0_reg[31]_0\(14) => axi_slave_inst_n_41,
      \reg0_reg[31]_0\(13) => axi_slave_inst_n_42,
      \reg0_reg[31]_0\(12) => axi_slave_inst_n_43,
      \reg0_reg[31]_0\(11) => axi_slave_inst_n_44,
      \reg0_reg[31]_0\(10) => axi_slave_inst_n_45,
      \reg0_reg[31]_0\(9) => axi_slave_inst_n_46,
      \reg0_reg[31]_0\(8) => axi_slave_inst_n_47,
      \reg0_reg[31]_0\(7) => axi_slave_inst_n_48,
      \reg0_reg[31]_0\(6) => axi_slave_inst_n_49,
      \reg0_reg[31]_0\(5) => axi_slave_inst_n_50,
      \reg0_reg[31]_0\(4) => axi_slave_inst_n_51,
      \reg0_reg[31]_0\(3) => axi_slave_inst_n_52,
      \reg0_reg[31]_0\(2) => axi_slave_inst_n_53,
      \reg0_reg[31]_0\(1) => axi_slave_inst_n_54,
      \reg0_reg[31]_0\(0) => axi_slave_inst_n_55,
      reg1_wr_pulse => reg1_wr_pulse,
      rx_af_full => rx_af_full,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      \s_axis_tdata[31]\(31 downto 0) => wr_data(31 downto 0),
      s_axis_tvalid => s_axis_tvalid
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
    s_axi_rready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
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
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 clk_100MHz CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME clk_100MHz, ASSOCIATED_BUSIF s_axis:m_axis, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_200MHz : signal is "xilinx.com:signal:clock:1.0 clk_200MHz CLK";
  attribute X_INTERFACE_PARAMETER of clk_200MHz : signal is "XIL_INTERFACENAME clk_200MHz, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
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
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
inst: entity work.ps_pl_system_top_system_level_0_3_top_system_level
     port map (
      clk_100MHz => clk_100MHz,
      clk_200MHz => clk_200MHz,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
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
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      sys_rst_n => sys_rst_n,
      txd => txd
    );
end STRUCTURE;
