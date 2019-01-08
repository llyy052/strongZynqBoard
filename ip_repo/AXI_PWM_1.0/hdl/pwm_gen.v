`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/07 22:28:39
// Design Name: 
// Module Name: pwm_gen
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


module pwm_gen(
    input wire clk,
    input wire rst_n,
    
    input wire [31:0]reg_control,
    input wire [31:0]reg_prescale,
    input wire [31:0]reg_resolution,
    input wire [31:0]reg_duty,
    output reg pulse_out
    );

reg [31:0]clk_count;
reg pre_pulse;
always @( posedge clk )begin
    if(!rst_n)begin
        clk_count <= 32'd0;
        pre_pulse <= 1'b0;
    end else begin
        if(clk_count <= reg_prescale)begin
            clk_count <= clk_count+1'b1;
            pre_pulse <= 1'b0;
        end else begin
            clk_count <= 32'd0;
            pre_pulse <= 1'b1;       
        end
    end
end

reg [15:0]pulse_count;
always @( posedge clk )begin
    if(!rst_n)begin
        pulse_count <= 16'd0;
    end else begin
        if(pulse_count >= reg_resolution)begin
            pulse_count <= 16'd0;
        end else if(pre_pulse)begin
            pulse_count <= pulse_count+1'b1;
        end else begin
            pulse_count <= pulse_count;
        end
    end  
end

always @( posedge clk )begin
    if(!rst_n)begin
        pulse_out <= 1'b0;
    end else begin
        if(pulse_count < reg_duty)begin
            pulse_out <= 1'b1;
        end else begin
            pulse_out <= 1'b0;
        end
    end  
end
    
endmodule
