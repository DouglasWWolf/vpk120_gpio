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

