`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/20 19:52:52
// Design Name: 
// Module Name: 7z020
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top7z020(
    inout wire [14:0]DDR_addr,
    inout wire [2:0]DDR_ba,
    inout wire DDR_cas_n,
    inout wire DDR_ck_n,
    inout wire DDR_ck_p,
    inout wire DDR_cke,
    inout wire DDR_cs_n,
    inout wire [3:0]DDR_dm,
    inout wire [31:0]DDR_dq,
    inout wire [3:0]DDR_dqs_n,
    inout wire [3:0]DDR_dqs_p,
    inout wire DDR_odt,
    inout wire DDR_ras_n,
    inout wire DDR_reset_n,
    inout wire DDR_we_n,
    inout wire FIXED_IO_ddr_vrn,
    inout wire FIXED_IO_ddr_vrp,
    inout wire [53:0]FIXED_IO_mio,
    inout wire FIXED_IO_ps_clk,
    inout wire FIXED_IO_ps_porb,
    inout wire FIXED_IO_ps_srstb,
    
    //output wire [1:0]axi_gpio0

    inout wire iic0_scl_io,
    inout wire iic0_sda_io
/*
    inout wire axi_iic0_scl_io,
    inout wire axi_iic0_sda_io,
    inout wire axi_iic1_scl_io,
    inout wire axi_iic1_sda_io,
    inout wire axi_iic2_scl_io,
    inout wire axi_iic2_sda_io,
	
	inout wire axi_spi0_io0_io,
    inout wire axi_spi0_io1_io,
    inout wire axi_spi0_sck_io,
    inout wire axi_spi0_ss_io,
	
    inout wire axi_spi1_io0_io,
    inout wire axi_spi1_io1_io,
    inout wire axi_spi1_sck_io,
    inout wire axi_spi1_ss_io
*/
    );
    
sys_wrapper soc(
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
	
	//.axi_gpio0_tri_o(axi_gpio0)
	//.axi_gpio0_tri_o({iic0_sda_io,iic0_scl_io})
	
	.iic0_scl_io(iic0_scl_io),
	.iic0_sda_io(iic0_sda_io)
/*	
	.axi_iic0_scl_io(axi_iic0_scl_io),
	.axi_iic0_sda_io(axi_iic0_sda_io),
	.axi_iic1_scl_io(axi_iic1_scl_io),
	.axi_iic1_sda_io(axi_iic1_sda_io),
	.axi_iic2_scl_io(axi_iic2_scl_io),
	.axi_iic2_sda_io(axi_iic2_sda_io),
	
	.axi_spi0_io0_io(axi_spi0_io0_io),
    .axi_spi0_io1_io(axi_spi0_io1_io),
    .axi_spi0_sck_io(axi_spi0_sck_io),
    .axi_spi0_ss_io(axi_spi0_ss_io),
	
    .axi_spi1_io0_io(axi_spi1_io0_io),
    .axi_spi1_io1_io(axi_spi1_io1_io),
    .axi_spi1_sck_io(axi_spi1_sck_io),
    .axi_spi1_ss_io(axi_spi1_ss_io),
*/
);    
    
endmodule
