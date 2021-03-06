/***************************************************
Student Name: 王培碩 施家齊
Student ID: 0816137 0716241
***************************************************/

`timescale 1ns/1ps

module MUX_3to1(
	input  [31:0] data0_i,       
	input  [31:0] data1_i,
	input  [31:0] data2_i,
	input  [2-1:0] select_i,
	output [31:0] data_o
    );		   

/* Write your code HERE */
reg [32-1:0]temp;
assign data_o=temp;
always@(*)
begin
	if(select_i==0)
		temp<=data0_i;
	else if(select_i==2'b01)
		temp<=data1_i;
	else
		temp<=data2_i;
end
endmodule      
          