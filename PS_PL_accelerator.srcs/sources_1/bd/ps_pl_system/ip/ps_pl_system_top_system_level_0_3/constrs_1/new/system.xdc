###########################################################################
## Section 1: Base System Configuration, Clock & Fan Controls
###########################################################################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# Differential System Clock (200 MHz)
set_property PACKAGE_PIN AE5 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_p]
set_property PACKAGE_PIN AF5 [get_ports sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_n]
create_clock -period 5.000 -name sys_clk_p -waveform {0.000 2.500} [get_ports sys_clk_p]

# Cooling Fan Control
set_property PACKAGE_PIN AG14 [get_ports {fan_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {fan_tri_o[0]}]


###########################################################################
## Section 2: Reset Button & User LED
###########################################################################
# Reset / User Key
set_property PACKAGE_PIN AE14 [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst_n]

# User LED
set_property PACKAGE_PIN AE15 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]


###########################################################################
## Section 3: Serial UART
###########################################################################
set_property PACKAGE_PIN AA10 [get_ports rxd]
set_property IOSTANDARD LVCMOS33 [get_ports rxd]

set_property PACKAGE_PIN AA11 [get_ports txd]
set_property IOSTANDARD LVCMOS33 [get_ports txd]


###########################################################################
## Section 4: RS485 Interfaces
###########################################################################
# RS485 Port 1
set_property PACKAGE_PIN A10 [get_ports rs485_de1]
set_property IOSTANDARD LVCMOS33 [get_ports rs485_de1]

set_property PACKAGE_PIN AH10 [get_ports rs485_rx1]
set_property IOSTANDARD LVCMOS33 [get_ports rs485_rx1]

set_property PACKAGE_PIN AG10 [get_ports rs485_tx1]
set_property IOSTANDARD LVCMOS33 [get_ports rs485_tx1]

# RS485 Port 2
set_property PACKAGE_PIN B11 [get_ports rs485_de2]
set_property IOSTANDARD LVCMOS33 [get_ports rs485_de2]

set_property PACKAGE_PIN AH12 [get_ports rs485_rx2]
set_property IOSTANDARD LVCMOS33 [get_ports rs485_rx2]

set_property PACKAGE_PIN AH11 [get_ports rs485_tx2]
set_property IOSTANDARD LVCMOS33 [get_ports rs485_tx2]


###########################################################################
## Section 5: PL DDR4 Memory
###########################################################################
set_property INTERNAL_VREF 0.6 [get_iobanks 64]

set_property PACKAGE_PIN AH4 [get_ports {c0_ddr4_odt[0]}]
set_property PACKAGE_PIN AE8 [get_ports {c0_ddr4_bg[0]}]
set_property PACKAGE_PIN AB5 [get_ports {c0_ddr4_adr[16]}]
set_property PACKAGE_PIN AB7 [get_ports {c0_ddr4_adr[15]}]
set_property PACKAGE_PIN AF6 [get_ports {c0_ddr4_adr[14]}]
set_property PACKAGE_PIN AD9 [get_ports {c0_ddr4_adr[13]}]
set_property PACKAGE_PIN AC6 [get_ports {c0_ddr4_adr[12]}]
set_property PACKAGE_PIN AH9 [get_ports {c0_ddr4_adr[11]}]
set_property PACKAGE_PIN AE7 [get_ports {c0_ddr4_adr[10]}]
set_property PACKAGE_PIN AC9 [get_ports {c0_ddr4_adr[9]}]
set_property PACKAGE_PIN AH8 [get_ports {c0_ddr4_adr[8]}]
set_property PACKAGE_PIN AE9 [get_ports {c0_ddr4_adr[7]}]
set_property PACKAGE_PIN AH7 [get_ports {c0_ddr4_adr[6]}]
set_property PACKAGE_PIN AD7 [get_ports {c0_ddr4_adr[5]}]
set_property PACKAGE_PIN AF7 [get_ports {c0_ddr4_adr[4]}]
set_property PACKAGE_PIN AC8 [get_ports {c0_ddr4_adr[3]}]
set_property PACKAGE_PIN AF8 [get_ports {c0_ddr4_adr[2]}]
set_property PACKAGE_PIN AB8 [get_ports {c0_ddr4_adr[1]}]
set_property PACKAGE_PIN AG8 [get_ports {c0_ddr4_adr[0]}]

set_property PACKAGE_PIN AD2 [get_ports {c0_ddr4_dqs_t[1]}]
set_property PACKAGE_PIN AD1 [get_ports {c0_ddr4_dqs_c[1]}]
set_property PACKAGE_PIN AE2 [get_ports {c0_ddr4_dqs_t[0]}]
set_property PACKAGE_PIN AF2 [get_ports {c0_ddr4_dqs_c[0]}]

set_property PACKAGE_PIN AC4 [get_ports {c0_ddr4_dq[15]}]
set_property PACKAGE_PIN AC3 [get_ports {c0_ddr4_dq[14]}]
set_property PACKAGE_PIN AB4 [get_ports {c0_ddr4_dq[13]}]
set_property PACKAGE_PIN AB3 [get_ports {c0_ddr4_dq[12]}]
set_property PACKAGE_PIN AB2 [get_ports {c0_ddr4_dq[11]}]
set_property PACKAGE_PIN AC2 [get_ports {c0_ddr4_dq[10]}]
set_property PACKAGE_PIN AB1 [get_ports {c0_ddr4_dq[9]}]
set_property PACKAGE_PIN AC1 [get_ports {c0_ddr4_dq[8]}]
set_property PACKAGE_PIN AG3 [get_ports {c0_ddr4_dq[7]}]
set_property PACKAGE_PIN AH3 [get_ports {c0_ddr4_dq[6]}]
set_property PACKAGE_PIN AE3 [get_ports {c0_ddr4_dq[5]}]
set_property PACKAGE_PIN AF3 [get_ports {c0_ddr4_dq[4]}]
set_property PACKAGE_PIN AH2 [get_ports {c0_ddr4_dq[3]}]
set_property PACKAGE_PIN AH1 [get_ports {c0_ddr4_dq[2]}]
set_property PACKAGE_PIN AF1 [get_ports {c0_ddr4_dq[1]}]
set_property PACKAGE_PIN AG1 [get_ports {c0_ddr4_dq[0]}]

set_property PACKAGE_PIN AB6 [get_ports {c0_ddr4_cs_n[0]}]
set_property PACKAGE_PIN AG6 [get_ports {c0_ddr4_ck_t[0]}]
set_property PACKAGE_PIN AG5 [get_ports {c0_ddr4_ck_c[0]}]
set_property PACKAGE_PIN AE4 [get_ports {c0_ddr4_cke[0]}]
set_property PACKAGE_PIN AG9 [get_ports c0_ddr4_reset_n]
set_property PACKAGE_PIN AD4 [get_ports c0_ddr4_act_n]
set_property PACKAGE_PIN AC7 [get_ports {c0_ddr4_ba[1]}]
set_property PACKAGE_PIN AH6 [get_ports {c0_ddr4_ba[0]}]
set_property PACKAGE_PIN AD5 [get_ports {c0_ddr4_dm_dbi_n[1]}]
set_property PACKAGE_PIN AG4 [get_ports {c0_ddr4_dm_dbi_n[0]}]


###########################################################################
## Section 6: RGMII Gigabit Ethernet
###########################################################################
set_property PACKAGE_PIN A6 [get_ports {mdio_mdc}] 
set_property PACKAGE_PIN C8 [get_ports {mdio_mdio_io}] 
set_property PACKAGE_PIN D5 [get_ports {phy_reset_n}] 
set_property PACKAGE_PIN E5 [get_ports {rgmii_rxc}] 
set_property PACKAGE_PIN B8 [get_ports {rgmii_rx_ctl}] 
set_property PACKAGE_PIN A5 [get_ports {rgmii_rd[0]}] 
set_property PACKAGE_PIN B5 [get_ports {rgmii_rd[1]}] 
set_property PACKAGE_PIN F8 [get_ports {rgmii_rd[2]}] 
set_property PACKAGE_PIN C9 [get_ports {rgmii_rd[3]}] 
set_property PACKAGE_PIN A7 [get_ports {rgmii_txc}] 
set_property PACKAGE_PIN B9 [get_ports {rgmii_tx_ctl}] 
set_property PACKAGE_PIN E9 [get_ports {rgmii_td[0]}] 
set_property PACKAGE_PIN D9 [get_ports {rgmii_td[1]}] 
set_property PACKAGE_PIN A9 [get_ports {rgmii_td[2]}] 
set_property PACKAGE_PIN A8 [get_ports {rgmii_td[3]}] 

set_property IOSTANDARD LVCMOS18 [get_ports {mdio_mdc}] 
set_property IOSTANDARD LVCMOS18 [get_ports {mdio_mdio_io}] 
set_property IOSTANDARD LVCMOS18 [get_ports {phy_reset_n}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rxc}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rx_ctl}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[0]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[1]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[2]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[3]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_txc}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_tx_ctl}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[0]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[1]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[2]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[3]}] 

set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports mdio_mdio_io]

# Ethernet IDELAY Cell Delay Tuning
set_property DELAY_VALUE 500 [get_cells design_1_i/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/delay_rgmii_rx_ctl]
set_property DELAY_VALUE 500 [get_cells {design_1_i/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[0].delay_rgmii_rxd}]
set_property DELAY_VALUE 500 [get_cells {design_1_i/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[1].delay_rgmii_rxd}]
set_property DELAY_VALUE 500 [get_cells {design_1_i/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[2].delay_rgmii_rxd}]
set_property DELAY_VALUE 500 [get_cells {design_1_i/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[3].delay_rgmii_rxd}]


###########################################################################
## Section 7: Camera Interface & Controls
###########################################################################
set_property PACKAGE_PIN AE10 [get_ports {cam_gpio[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gpio[0]}]
set_property PULLUP true [get_ports {cam_gpio[0]}]

set_property PACKAGE_PIN Y9  [get_ports cam_i2c_scl_io]
set_property PACKAGE_PIN AA8 [get_ports cam_i2c_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports cam_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports cam_i2c_sda_io]
set_property PULLUP true [get_ports cam_i2c_scl_io]
set_property PULLUP true [get_ports cam_i2c_sda_io]


###########################################################################
## Section 8: HDMI RX (Input)
###########################################################################
set_property PACKAGE_PIN AB11 [get_ports hdmi_in_clk]
set_property PACKAGE_PIN Y14  [get_ports {hdmi_in_data[0]}]
set_property PACKAGE_PIN Y13  [get_ports {hdmi_in_data[1]}]
set_property PACKAGE_PIN AB13 [get_ports {hdmi_in_data[2]}]
set_property PACKAGE_PIN AC12 [get_ports {hdmi_in_data[3]}]
set_property PACKAGE_PIN AC14 [get_ports {hdmi_in_data[4]}]
set_property PACKAGE_PIN AC13 [get_ports {hdmi_in_data[5]}]
set_property PACKAGE_PIN AD12 [get_ports {hdmi_in_data[6]}]
set_property PACKAGE_PIN AD11 [get_ports {hdmi_in_data[7]}]
set_property PACKAGE_PIN AD15 [get_ports {hdmi_in_data[8]}]
set_property PACKAGE_PIN AD14 [get_ports {hdmi_in_data[9]}]
set_property PACKAGE_PIN AG13 [get_ports {hdmi_in_data[10]}]
set_property PACKAGE_PIN AH13 [get_ports {hdmi_in_data[11]}]
set_property PACKAGE_PIN AB9  [get_ports {hdmi_in_data[12]}]
set_property PACKAGE_PIN AB10 [get_ports {hdmi_in_data[13]}]
set_property PACKAGE_PIN Y10  [get_ports {hdmi_in_data[14]}]
set_property PACKAGE_PIN W10  [get_ports {hdmi_in_data[15]}]
set_property PACKAGE_PIN W11  [get_ports {hdmi_in_data[16]}]
set_property PACKAGE_PIN W12  [get_ports {hdmi_in_data[17]}]
set_property PACKAGE_PIN W13  [get_ports {hdmi_in_data[18]}]
set_property PACKAGE_PIN W14  [get_ports {hdmi_in_data[19]}]
set_property PACKAGE_PIN AB15 [get_ports {hdmi_in_data[20]}]
set_property PACKAGE_PIN AB14 [get_ports {hdmi_in_data[21]}]
set_property PACKAGE_PIN AG11 [get_ports {hdmi_in_data[22]}]
set_property PACKAGE_PIN AF11 [get_ports {hdmi_in_data[23]}]
set_property PACKAGE_PIN AA13 [get_ports hdmi_in_de]
set_property PACKAGE_PIN AA12 [get_ports hdmi_in_hs]
set_property PACKAGE_PIN AD10 [get_ports {hdmi_rstn_tri_o[0]}]
set_property PACKAGE_PIN Y12  [get_ports hdmi_in_vs]

# HDMI IN I2C
set_property PACKAGE_PIN AF12 [get_ports hdmi_in_i2c_scl_io]
set_property PACKAGE_PIN AE12 [get_ports hdmi_in_i2c_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_i2c_sda_io]
set_property PULLUP true [get_ports hdmi_in_i2c_scl_io]
set_property PULLUP true [get_ports hdmi_in_i2c_sda_io]

# EDID & HPD
set_property PACKAGE_PIN F10 [get_ports {edid_scl}]
set_property PACKAGE_PIN G11 [get_ports {edid_sda}]
set_property PACKAGE_PIN E8  [get_ports {hpd[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {edid_scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {edid_sda}]
set_property IOSTANDARD LVCMOS18 [get_ports {hpd[0]}]

# IO Standards & Properties
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_in_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_de]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_hs]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_vs]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_rstn_tri_o[0]}]

set_property IOB TRUE [get_ports {hdmi_in_data[*]}]
set_property IOB TRUE [get_ports hdmi_in_de]
set_property IOB TRUE [get_ports hdmi_in_hs]
set_property IOB TRUE [get_ports hdmi_in_vs]

set_property DRIVE 12 [get_ports {hdmi_in_data[*]}]
set_property DRIVE 12 [get_ports hdmi_in_clk]
set_property DRIVE 12 [get_ports hdmi_in_de]
set_property DRIVE 12 [get_ports hdmi_in_hs]

# Timing Constraints for HDMI In
create_clock -period 6.734 -name hdmi_in_clk -waveform {0.000 3.367} [get_ports hdmi_in_clk]
set_input_delay -clock [get_clocks hdmi_in_clk] -min -add_delay 2.500 [get_ports {hdmi_in_data[*]}]
set_input_delay -clock [get_clocks hdmi_in_clk] -max -add_delay 3.500 [get_ports {hdmi_in_data[*]}]
set_input_delay -clock [get_clocks hdmi_in_clk] -min -add_delay 2.500 [get_ports hdmi_in_de]
set_input_delay -clock [get_clocks hdmi_in_clk] -max -add_delay 3.500 [get_ports hdmi_in_de]
set_input_delay -clock [get_clocks hdmi_in_clk] -min -add_delay 2.500 [get_ports hdmi_in_hs]
set_input_delay -clock [get_clocks hdmi_in_clk] -max -add_delay 3.500 [get_ports hdmi_in_hs]
set_input_delay -clock [get_clocks hdmi_in_clk] -min -add_delay 2.500 [get_ports hdmi_in_vs]
set_input_delay -clock [get_clocks hdmi_in_clk] -max -add_delay 3.500 [get_ports hdmi_in_vs]


###########################################################################
## Section 9: HDMI TX (Output)
###########################################################################
set_property PACKAGE_PIN F11 [get_ports hdmi_out_clk]
set_property PACKAGE_PIN C14 [get_ports {hdmi_out_data[0]}]
set_property PACKAGE_PIN C13 [get_ports {hdmi_out_data[1]}]
set_property PACKAGE_PIN B14 [get_ports {hdmi_out_data[2]}]
set_property PACKAGE_PIN A14 [get_ports {hdmi_out_data[3]}]
set_property PACKAGE_PIN B13 [get_ports {hdmi_out_data[4]}]
set_property PACKAGE_PIN A13 [get_ports {hdmi_out_data[5]}]
set_property PACKAGE_PIN E14 [get_ports {hdmi_out_data[6]}]
set_property PACKAGE_PIN E13 [get_ports {hdmi_out_data[7]}]
set_property PACKAGE_PIN F12 [get_ports {hdmi_out_data[8]}]
set_property PACKAGE_PIN A11 [get_ports {hdmi_out_data[9]}]
set_property PACKAGE_PIN A12 [get_ports {hdmi_out_data[10]}]
set_property PACKAGE_PIN H12 [get_ports {hdmi_out_data[11]}]
set_property PACKAGE_PIN J12 [get_ports {hdmi_out_data[12]}]
set_property PACKAGE_PIN K14 [get_ports {hdmi_out_data[13]}]
set_property PACKAGE_PIN J14 [get_ports {hdmi_out_data[14]}]
set_property PACKAGE_PIN H13 [get_ports {hdmi_out_data[15]}]
set_property PACKAGE_PIN H14 [get_ports {hdmi_out_data[16]}]
set_property PACKAGE_PIN F13 [get_ports {hdmi_out_data[17]}]
set_property PACKAGE_PIN G13 [get_ports {hdmi_out_data[18]}]
set_property PACKAGE_PIN G14 [get_ports {hdmi_out_data[19]}]
set_property PACKAGE_PIN G15 [get_ports {hdmi_out_data[20]}]
set_property PACKAGE_PIN D14 [get_ports {hdmi_out_data[21]}]
set_property PACKAGE_PIN D15 [get_ports {hdmi_out_data[22]}]
set_property PACKAGE_PIN B15 [get_ports {hdmi_out_data[23]}]
set_property PACKAGE_PIN L14 [get_ports hdmi_out_de]
set_property PACKAGE_PIN L13 [get_ports hdmi_out_hs]
set_property PACKAGE_PIN A15 [get_ports hdmi_out_vs]

# HDMI OUT I2C
set_property PACKAGE_PIN AF13 [get_ports hdmi_out_i2c_scl_io]
set_property PACKAGE_PIN AE13 [get_ports hdmi_out_i2c_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_i2c_sda_io]
set_property PULLUP true [get_ports hdmi_out_i2c_scl_io]
set_property PULLUP true [get_ports hdmi_out_i2c_sda_io]

# IO Standards & Slew
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_out_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_clk]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_de]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_vs]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_hs]

set_property SLEW FAST [get_ports {hdmi_out_data[*]}]
set_property DRIVE 8 [get_ports {hdmi_out_data[*]}]
set_property SLEW FAST [get_ports hdmi_out_clk]
set_property SLEW FAST [get_ports hdmi_out_de]
set_property SLEW FAST [get_ports hdmi_out_hs]
set_property SLEW FAST [get_ports hdmi_out_vs]


###########################################################################
## Section 10: PCI Express (PCIe)
###########################################################################
set_property PACKAGE_PIN Y6 [get_ports pcie_ref_clk_p]
create_clock -period 10.000 -name pcie_ref_clk_p -waveform {0.000 5.000} [get_ports pcie_ref_clk_p]

set_property PACKAGE_PIN T2 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN P2 [get_ports {pcie_mgt_rxp[1]}]

set_property PACKAGE_PIN R4 [get_ports {pcie_mgt_txp[0]}]
set_property PACKAGE_PIN N4 [get_ports {pcie_mgt_txp[1]}]

set_property PACKAGE_PIN AC11 [get_ports pcie_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports pcie_rst_n]