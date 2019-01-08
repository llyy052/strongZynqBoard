//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Mon Jan 07 23:26:27 2019
//Host        : SRPC00501 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target sys_wrapper.bd
//Design      : sys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sys_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    axi_gpio0_tri_o,
    axi_iic0_scl_io,
    axi_iic0_sda_io,
    axi_iic1_scl_io,
    axi_iic1_sda_io,
    axi_iic2_scl_io,
    axi_iic2_sda_io,
    axi_spi0_io0_io,
    axi_spi0_io1_io,
    axi_spi0_sck_io,
    axi_spi0_ss_io,
    axi_spi1_io0_io,
    axi_spi1_io1_io,
    axi_spi1_sck_io,
    axi_spi1_ss_io,
    iic0_scl_io,
    iic0_sda_io,
    pwm0_out,
    pwm1_out);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [1:0]axi_gpio0_tri_o;
  inout axi_iic0_scl_io;
  inout axi_iic0_sda_io;
  inout axi_iic1_scl_io;
  inout axi_iic1_sda_io;
  inout axi_iic2_scl_io;
  inout axi_iic2_sda_io;
  inout axi_spi0_io0_io;
  inout axi_spi0_io1_io;
  inout axi_spi0_sck_io;
  inout [0:0]axi_spi0_ss_io;
  inout axi_spi1_io0_io;
  inout axi_spi1_io1_io;
  inout axi_spi1_sck_io;
  inout [0:0]axi_spi1_ss_io;
  inout iic0_scl_io;
  inout iic0_sda_io;
  output pwm0_out;
  output pwm1_out;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [1:0]axi_gpio0_tri_o;
  wire axi_iic0_scl_i;
  wire axi_iic0_scl_io;
  wire axi_iic0_scl_o;
  wire axi_iic0_scl_t;
  wire axi_iic0_sda_i;
  wire axi_iic0_sda_io;
  wire axi_iic0_sda_o;
  wire axi_iic0_sda_t;
  wire axi_iic1_scl_i;
  wire axi_iic1_scl_io;
  wire axi_iic1_scl_o;
  wire axi_iic1_scl_t;
  wire axi_iic1_sda_i;
  wire axi_iic1_sda_io;
  wire axi_iic1_sda_o;
  wire axi_iic1_sda_t;
  wire axi_iic2_scl_i;
  wire axi_iic2_scl_io;
  wire axi_iic2_scl_o;
  wire axi_iic2_scl_t;
  wire axi_iic2_sda_i;
  wire axi_iic2_sda_io;
  wire axi_iic2_sda_o;
  wire axi_iic2_sda_t;
  wire axi_spi0_io0_i;
  wire axi_spi0_io0_io;
  wire axi_spi0_io0_o;
  wire axi_spi0_io0_t;
  wire axi_spi0_io1_i;
  wire axi_spi0_io1_io;
  wire axi_spi0_io1_o;
  wire axi_spi0_io1_t;
  wire axi_spi0_sck_i;
  wire axi_spi0_sck_io;
  wire axi_spi0_sck_o;
  wire axi_spi0_sck_t;
  wire [0:0]axi_spi0_ss_i_0;
  wire [0:0]axi_spi0_ss_io_0;
  wire [0:0]axi_spi0_ss_o_0;
  wire axi_spi0_ss_t;
  wire axi_spi1_io0_i;
  wire axi_spi1_io0_io;
  wire axi_spi1_io0_o;
  wire axi_spi1_io0_t;
  wire axi_spi1_io1_i;
  wire axi_spi1_io1_io;
  wire axi_spi1_io1_o;
  wire axi_spi1_io1_t;
  wire axi_spi1_sck_i;
  wire axi_spi1_sck_io;
  wire axi_spi1_sck_o;
  wire axi_spi1_sck_t;
  wire [0:0]axi_spi1_ss_i_0;
  wire [0:0]axi_spi1_ss_io_0;
  wire [0:0]axi_spi1_ss_o_0;
  wire axi_spi1_ss_t;
  wire iic0_scl_i;
  wire iic0_scl_io;
  wire iic0_scl_o;
  wire iic0_scl_t;
  wire iic0_sda_i;
  wire iic0_sda_io;
  wire iic0_sda_o;
  wire iic0_sda_t;
  wire pwm0_out;
  wire pwm1_out;

  IOBUF axi_iic0_scl_iobuf
       (.I(axi_iic0_scl_o),
        .IO(axi_iic0_scl_io),
        .O(axi_iic0_scl_i),
        .T(axi_iic0_scl_t));
  IOBUF axi_iic0_sda_iobuf
       (.I(axi_iic0_sda_o),
        .IO(axi_iic0_sda_io),
        .O(axi_iic0_sda_i),
        .T(axi_iic0_sda_t));
  IOBUF axi_iic1_scl_iobuf
       (.I(axi_iic1_scl_o),
        .IO(axi_iic1_scl_io),
        .O(axi_iic1_scl_i),
        .T(axi_iic1_scl_t));
  IOBUF axi_iic1_sda_iobuf
       (.I(axi_iic1_sda_o),
        .IO(axi_iic1_sda_io),
        .O(axi_iic1_sda_i),
        .T(axi_iic1_sda_t));
  IOBUF axi_iic2_scl_iobuf
       (.I(axi_iic2_scl_o),
        .IO(axi_iic2_scl_io),
        .O(axi_iic2_scl_i),
        .T(axi_iic2_scl_t));
  IOBUF axi_iic2_sda_iobuf
       (.I(axi_iic2_sda_o),
        .IO(axi_iic2_sda_io),
        .O(axi_iic2_sda_i),
        .T(axi_iic2_sda_t));
  IOBUF axi_spi0_io0_iobuf
       (.I(axi_spi0_io0_o),
        .IO(axi_spi0_io0_io),
        .O(axi_spi0_io0_i),
        .T(axi_spi0_io0_t));
  IOBUF axi_spi0_io1_iobuf
       (.I(axi_spi0_io1_o),
        .IO(axi_spi0_io1_io),
        .O(axi_spi0_io1_i),
        .T(axi_spi0_io1_t));
  IOBUF axi_spi0_sck_iobuf
       (.I(axi_spi0_sck_o),
        .IO(axi_spi0_sck_io),
        .O(axi_spi0_sck_i),
        .T(axi_spi0_sck_t));
  IOBUF axi_spi0_ss_iobuf_0
       (.I(axi_spi0_ss_o_0),
        .IO(axi_spi0_ss_io[0]),
        .O(axi_spi0_ss_i_0),
        .T(axi_spi0_ss_t));
  IOBUF axi_spi1_io0_iobuf
       (.I(axi_spi1_io0_o),
        .IO(axi_spi1_io0_io),
        .O(axi_spi1_io0_i),
        .T(axi_spi1_io0_t));
  IOBUF axi_spi1_io1_iobuf
       (.I(axi_spi1_io1_o),
        .IO(axi_spi1_io1_io),
        .O(axi_spi1_io1_i),
        .T(axi_spi1_io1_t));
  IOBUF axi_spi1_sck_iobuf
       (.I(axi_spi1_sck_o),
        .IO(axi_spi1_sck_io),
        .O(axi_spi1_sck_i),
        .T(axi_spi1_sck_t));
  IOBUF axi_spi1_ss_iobuf_0
       (.I(axi_spi1_ss_o_0),
        .IO(axi_spi1_ss_io[0]),
        .O(axi_spi1_ss_i_0),
        .T(axi_spi1_ss_t));
  IOBUF iic0_scl_iobuf
       (.I(iic0_scl_o),
        .IO(iic0_scl_io),
        .O(iic0_scl_i),
        .T(iic0_scl_t));
  IOBUF iic0_sda_iobuf
       (.I(iic0_sda_o),
        .IO(iic0_sda_io),
        .O(iic0_sda_i),
        .T(iic0_sda_t));
  sys sys_i
       (.AXI_GPIO0_tri_o(axi_gpio0_tri_o),
        .AXI_IIC0_scl_i(axi_iic0_scl_i),
        .AXI_IIC0_scl_o(axi_iic0_scl_o),
        .AXI_IIC0_scl_t(axi_iic0_scl_t),
        .AXI_IIC0_sda_i(axi_iic0_sda_i),
        .AXI_IIC0_sda_o(axi_iic0_sda_o),
        .AXI_IIC0_sda_t(axi_iic0_sda_t),
        .AXI_IIC1_scl_i(axi_iic1_scl_i),
        .AXI_IIC1_scl_o(axi_iic1_scl_o),
        .AXI_IIC1_scl_t(axi_iic1_scl_t),
        .AXI_IIC1_sda_i(axi_iic1_sda_i),
        .AXI_IIC1_sda_o(axi_iic1_sda_o),
        .AXI_IIC1_sda_t(axi_iic1_sda_t),
        .AXI_IIC2_scl_i(axi_iic2_scl_i),
        .AXI_IIC2_scl_o(axi_iic2_scl_o),
        .AXI_IIC2_scl_t(axi_iic2_scl_t),
        .AXI_IIC2_sda_i(axi_iic2_sda_i),
        .AXI_IIC2_sda_o(axi_iic2_sda_o),
        .AXI_IIC2_sda_t(axi_iic2_sda_t),
        .AXI_SPI0_io0_i(axi_spi0_io0_i),
        .AXI_SPI0_io0_o(axi_spi0_io0_o),
        .AXI_SPI0_io0_t(axi_spi0_io0_t),
        .AXI_SPI0_io1_i(axi_spi0_io1_i),
        .AXI_SPI0_io1_o(axi_spi0_io1_o),
        .AXI_SPI0_io1_t(axi_spi0_io1_t),
        .AXI_SPI0_sck_i(axi_spi0_sck_i),
        .AXI_SPI0_sck_o(axi_spi0_sck_o),
        .AXI_SPI0_sck_t(axi_spi0_sck_t),
        .AXI_SPI0_ss_i(axi_spi0_ss_i_0),
        .AXI_SPI0_ss_o(axi_spi0_ss_o_0),
        .AXI_SPI0_ss_t(axi_spi0_ss_t),
        .AXI_SPI1_io0_i(axi_spi1_io0_i),
        .AXI_SPI1_io0_o(axi_spi1_io0_o),
        .AXI_SPI1_io0_t(axi_spi1_io0_t),
        .AXI_SPI1_io1_i(axi_spi1_io1_i),
        .AXI_SPI1_io1_o(axi_spi1_io1_o),
        .AXI_SPI1_io1_t(axi_spi1_io1_t),
        .AXI_SPI1_sck_i(axi_spi1_sck_i),
        .AXI_SPI1_sck_o(axi_spi1_sck_o),
        .AXI_SPI1_sck_t(axi_spi1_sck_t),
        .AXI_SPI1_ss_i(axi_spi1_ss_i_0),
        .AXI_SPI1_ss_o(axi_spi1_ss_o_0),
        .AXI_SPI1_ss_t(axi_spi1_ss_t),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .IIC0_scl_i(iic0_scl_i),
        .IIC0_scl_o(iic0_scl_o),
        .IIC0_scl_t(iic0_scl_t),
        .IIC0_sda_i(iic0_sda_i),
        .IIC0_sda_o(iic0_sda_o),
        .IIC0_sda_t(iic0_sda_t),
        .pwm0_out(pwm0_out),
        .pwm1_out(pwm1_out));
endmodule
