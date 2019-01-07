
################################################################
# This is a generated script based on design: sys
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source sys_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg400-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name sys

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set AXI_GPIO0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 AXI_GPIO0 ]
  set AXI_IIC0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 AXI_IIC0 ]
  set AXI_IIC1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 AXI_IIC1 ]
  set AXI_IIC2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 AXI_IIC2 ]
  set AXI_SPI0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 AXI_SPI0 ]
  set AXI_SPI1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 AXI_SPI1 ]
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IIC0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC0 ]

  # Create ports
  set pwm0_out [ create_bd_port -dir O pwm0_out ]
  set pwm1_out [ create_bd_port -dir O pwm1_out ]

  # Create instance: AXI_PWM_0, and set properties
  set AXI_PWM_0 [ create_bd_cell -type ip -vlnv srkj.com:user:AXI_PWM:1.0 AXI_PWM_0 ]

  # Create instance: AXI_PWM_1, and set properties
  set AXI_PWM_1 [ create_bd_cell -type ip -vlnv srkj.com:user:AXI_PWM:1.0 AXI_PWM_1 ]

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {2} \
CONFIG.C_IS_DUAL {0} \
 ] $axi_gpio_0

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]

  # Create instance: axi_iic_1, and set properties
  set axi_iic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_1 ]

  # Create instance: axi_iic_2, and set properties
  set axi_iic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_2 ]

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
CONFIG.C_USE_STARTUP {0} \
CONFIG.C_USE_STARTUP_INT {0} \
CONFIG.Multiples16 {4} \
 ] $axi_quad_spi_0

  # Create instance: axi_quad_spi_1, and set properties
  set axi_quad_spi_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_1 ]
  set_property -dict [ list \
CONFIG.C_USE_STARTUP {0} \
CONFIG.C_USE_STARTUP_INT {0} \
 ] $axi_quad_spi_1

  # Create instance: cpu_0, and set properties
  set cpu_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 cpu_0 ]
  set_property -dict [ list \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {<Select>} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C1_I2C1_IO {MIO 12 .. 13} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
 ] $cpu_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {8} \
 ] $ps7_0_axi_periph

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {5} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports AXI_GPIO0] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports AXI_IIC0] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports AXI_IIC1] [get_bd_intf_pins axi_iic_1/IIC]
  connect_bd_intf_net -intf_net axi_iic_2_IIC [get_bd_intf_ports AXI_IIC2] [get_bd_intf_pins axi_iic_2/IIC]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports AXI_SPI0] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_quad_spi_1_SPI_0 [get_bd_intf_ports AXI_SPI1] [get_bd_intf_pins axi_quad_spi_1/SPI_0]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins cpu_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins cpu_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports IIC0] [get_bd_intf_pins cpu_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins cpu_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_iic_1/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_iic_2/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M04_AXI [get_bd_intf_pins axi_quad_spi_1/AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M05_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M06_AXI [get_bd_intf_pins AXI_PWM_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M07_AXI [get_bd_intf_pins AXI_PWM_1/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M07_AXI]

  # Create port connections
  connect_bd_net -net AXI_PWM_0_pulse_out [get_bd_ports pwm0_out] [get_bd_pins AXI_PWM_0/pulse_out]
  connect_bd_net -net AXI_PWM_1_pulse_out [get_bd_ports pwm1_out] [get_bd_pins AXI_PWM_1/pulse_out]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_iic_1_iic2intc_irpt [get_bd_pins axi_iic_1/iic2intc_irpt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_iic_2_iic2intc_irpt [get_bd_pins axi_iic_2/iic2intc_irpt] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net axi_quad_spi_1_ip2intc_irpt [get_bd_pins axi_quad_spi_1/ip2intc_irpt] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/M05_ARESETN] [get_bd_pins ps7_0_axi_periph/M06_ARESETN] [get_bd_pins ps7_0_axi_periph/M07_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins AXI_PWM_0/s00_axi_aresetn] [get_bd_pins AXI_PWM_1/s00_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_iic_1/s_axi_aresetn] [get_bd_pins axi_iic_2/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_quad_spi_1/s_axi_aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins AXI_PWM_0/s00_axi_aclk] [get_bd_pins AXI_PWM_1/s00_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_iic_1/s_axi_aclk] [get_bd_pins axi_iic_2/s_axi_aclk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_quad_spi_1/ext_spi_clk] [get_bd_pins axi_quad_spi_1/s_axi_aclk] [get_bd_pins cpu_0/FCLK_CLK0] [get_bd_pins cpu_0/M_AXI_GP0_ACLK] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/M05_ACLK] [get_bd_pins ps7_0_axi_periph/M06_ACLK] [get_bd_pins ps7_0_axi_periph/M07_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins cpu_0/FCLK_RESET0_N] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins cpu_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs AXI_PWM_0/S00_AXI/S00_AXI_reg] SEG_AXI_PWM_0_S00_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs AXI_PWM_1/S00_AXI/S00_AXI_reg] SEG_AXI_PWM_1_S00_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41600000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41610000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] SEG_axi_iic_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41620000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs axi_iic_2/S_AXI/Reg] SEG_axi_iic_2_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41E00000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41E10000 [get_bd_addr_spaces cpu_0/Data] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] SEG_axi_quad_spi_1_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port AXI_SPI0 -pg 1 -y 700 -defaultsOSRD
preplace port DDR -pg 1 -y 40 -defaultsOSRD
preplace port AXI_SPI1 -pg 1 -y 860 -defaultsOSRD
preplace port pwm1_out -pg 1 -y 1240 -defaultsOSRD
preplace port AXI_IIC0 -pg 1 -y 270 -defaultsOSRD
preplace port pwm0_out -pg 1 -y 1000 -defaultsOSRD
preplace port AXI_IIC1 -pg 1 -y 410 -defaultsOSRD
preplace port AXI_IIC2 -pg 1 -y 560 -defaultsOSRD
preplace port AXI_GPIO0 -pg 1 -y 1120 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 60 -defaultsOSRD
preplace port IIC0 -pg 1 -y 80 -defaultsOSRD
preplace inst axi_quad_spi_1 -pg 1 -lvl 3 -y 870 -defaultsOSRD
preplace inst axi_iic_0 -pg 1 -lvl 3 -y 290 -defaultsOSRD
preplace inst axi_iic_1 -pg 1 -lvl 3 -y 430 -defaultsOSRD
preplace inst axi_iic_2 -pg 1 -lvl 3 -y 580 -defaultsOSRD
preplace inst AXI_PWM_0 -pg 1 -lvl 3 -y 1000 -defaultsOSRD
preplace inst AXI_PWM_1 -pg 1 -lvl 3 -y 1240 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 3 -y 1120 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 2 -y 310 -defaultsOSRD
preplace inst proc_sys_reset_0 -pg 1 -lvl 1 -y 480 -defaultsOSRD
preplace inst ps7_0_axi_periph -pg 1 -lvl 2 -y 790 -defaultsOSRD
preplace inst cpu_0 -pg 1 -lvl 3 -y 90 -defaultsOSRD
preplace inst axi_quad_spi_0 -pg 1 -lvl 3 -y 710 -defaultsOSRD
preplace netloc axi_quad_spi_0_SPI_0 1 3 1 NJ
preplace netloc axi_iic_2_IIC 1 3 1 NJ
preplace netloc processing_system7_0_DDR 1 3 1 NJ
preplace netloc processing_system7_0_axi_periph_M03_AXI 1 2 1 760
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 2 1 690
preplace netloc axi_iic_0_iic2intc_irpt 1 1 3 390 210 NJ 210 1110
preplace netloc axi_iic_1_IIC 1 3 1 NJ
preplace netloc processing_system7_0_M_AXI_GP0 1 1 3 400 510 NJ 510 1120
preplace netloc ps7_0_axi_periph_M07_AXI 1 2 1 680
preplace netloc axi_quad_spi_1_ip2intc_irpt 1 1 3 390 530 NJ 790 1100
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 4 20 200 NJ 200 NJ 200 1100
preplace netloc processing_system7_0_IIC_0 1 3 1 NJ
preplace netloc axi_quad_spi_1_SPI_0 1 3 1 NJ
preplace netloc processing_system7_0_axi_periph_M02_AXI 1 2 1 740
preplace netloc AXI_PWM_0_pulse_out 1 3 1 NJ
preplace netloc proc_sys_reset_0_interconnect_aresetn 1 1 1 350
preplace netloc xlconcat_0_dout 1 2 1 680
preplace netloc ps7_0_axi_periph_M06_AXI 1 2 1 690
preplace netloc processing_system7_0_FIXED_IO 1 3 1 NJ
preplace netloc axi_iic_2_iic2intc_irpt 1 1 3 370 400 NJ 360 1110
preplace netloc axi_iic_1_iic2intc_irpt 1 1 3 400 220 NJ 220 1100
preplace netloc axi_gpio_0_GPIO 1 3 1 NJ
preplace netloc axi_iic_0_IIC 1 3 1 NJ
preplace netloc proc_sys_reset_0_peripheral_aresetn 1 1 2 N 520 730
preplace netloc ps7_0_axi_periph_M05_AXI 1 2 1 700
preplace netloc processing_system7_0_FCLK_CLK0 1 0 4 30 390 360 430 710 190 1110
preplace netloc AXI_PWM_1_pulse_out 1 3 1 NJ
preplace netloc axi_quad_spi_0_ip2intc_irpt 1 1 3 380 500 NJ 500 1100
preplace netloc processing_system7_0_axi_periph_M04_AXI 1 2 1 720
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 2 1 720
levelinfo -pg 1 0 190 540 930 1140 -top 0 -bot 1310
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


