#
# The Versal VPK120 FPGA is xcvp1202-vsva2785-2MP-e-S
#

#
# Bitstream configuration
#
set_property BITSTREAM.GENERAL.COMPRESS TRUE  [current_design]

#
# PL UART
#
set_property -dict {PACKAGE_PIN V32  IOSTANDARD LVCMOS15}  [get_ports UART_txd]
set_property -dict {PACKAGE_PIN U32  IOSTANDARD LVCMOS15}  [get_ports UART_rxd]

#
# LEDs
#
set_property -dict {PACKAGE_PIN T33  IOSTANDARD LVCMOS15}  [get_ports GPIO_0_tri_o[3]]
set_property -dict {PACKAGE_PIN U33  IOSTANDARD LVCMOS15}  [get_ports GPIO_0_tri_o[2]]
set_property -dict {PACKAGE_PIN U37  IOSTANDARD LVCMOS15}  [get_ports GPIO_0_tri_o[1]]
set_property -dict {PACKAGE_PIN V37  IOSTANDARD LVCMOS15}  [get_ports GPIO_0_tri_o[0]]


#
# Switches
#
set_property -dict {PACKAGE_PIN N34  IOSTANDARD LVCMOS15}  [get_ports GPIO_1_tri_i[3]]
set_property -dict {PACKAGE_PIN P34  IOSTANDARD LVCMOS15}  [get_ports GPIO_1_tri_i[2]]
set_property -dict {PACKAGE_PIN P32  IOSTANDARD LVCMOS15}  [get_ports GPIO_1_tri_i[1]]
set_property -dict {PACKAGE_PIN R32  IOSTANDARD LVCMOS15}  [get_ports GPIO_1_tri_i[0]]

#
# GPIO pins on the FMC+ connector
# These are the two bottom-left pins of connector GPIO_1 on a Terasic F2G breakout board
#
set_property -dict {PACKAGE_PIN J22  IOSTANDARD LVCMOS15}  [get_ports GPIO_2_tri_o[1]]; # FMC LA33_P
set_property -dict {PACKAGE_PIN E22  IOSTANDARD LVCMOS15}  [get_ports GPIO_2_tri_o[0]]; # FMC LA32_P


#
# I2C pins on the FMC+ connector
# These are the two bottom-right pins of connector GPIO_1 on a Terasic F2G breakout board
#

set_property -dict { PACKAGE_PIN H22 IOSTANDARD LVCMOS15 } [get_ports IIC_0_scl_io ]; # FMC LA33_N
set_property -dict { PACKAGE_PIN E21 IOSTANDARD LVCMOS15 } [get_ports IIC_0_sda_io ]; # FMC_LA32_N

