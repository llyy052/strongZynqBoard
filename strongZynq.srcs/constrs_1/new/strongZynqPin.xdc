
#set_property PULLUP true [get_ports XXXXXX]
#set_property PACKAGE_PIN R18 [get_ports {XXXXXX}]
#set_property IOSTANDARD LVCMOS33 [get_ports {XXXXXX}]

#####*PWM*######
set_property PACKAGE_PIN U7 [get_ports {pwm_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm_o[0]}]

set_property PACKAGE_PIN V7 [get_ports {pwm_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm_o[1]}]

#set_property PACKAGE_PIN R18 [get_ports {axi_gpio0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_gpio0[0]}]
#set_property PACKAGE_PIN T17 [get_ports {axi_gpio0[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_gpio0[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {iic0_scl_io}]
#R18,    U7
set_property PACKAGE_PIN R18 [get_ports {iic0_scl_io}]
#set_property PULLUP true [get_ports iic0_scl_io]
#set_property PACKAGE_PIN U7 [get_ports {iic0_scl_io}]

set_property IOSTANDARD LVCMOS33 [get_ports {iic0_sda_io}]
#T17     V7
set_property PACKAGE_PIN T17 [get_ports {iic0_sda_io}]   
#set_property PULLUP true [get_ports iic0_sda_io]
#set_property PACKAGE_PIN V7 [get_ports {iic0_sda_io}]

#set_property IOSTANDARD LVCMOS33 [get_ports {axi_iic0_scl_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_iic0_scl_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_iic0_sda_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_iic0_sda_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_iic1_scl_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_iic1_scl_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_iic1_sda_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_iic1_sda_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_iic2_scl_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_iic2_scl_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_iic2_sda_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_iic2_sda_io}]
#######spi
set_property IOSTANDARD LVCMOS33 [get_ports {spi1_ss_io}]
set_property PACKAGE_PIN G20 [get_ports {spi1_ss_io}]

set_property IOSTANDARD LVCMOS33 [get_ports {spi1_sck_io}]
set_property PACKAGE_PIN E18 [get_ports {spi1_sck_io}]

set_property IOSTANDARD LVCMOS33 [get_ports {spi1_io0_io}]
set_property PACKAGE_PIN E19 [get_ports {spi1_io0_io}]
#
set_property IOSTANDARD LVCMOS33 [get_ports {spi1_io1_io}]
set_property PACKAGE_PIN F20 [get_ports {spi1_io1_io}]
#

#

#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_spi1_io0_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_spi1_io0_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_spi1_io1_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_spi1_io1_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_spi1_sck_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_spi1_sck_io}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {axi_spi1_ss_io}]
#set_property PACKAGE_PIN T17 [get_ports {axi_spi1_ss_io}]


















