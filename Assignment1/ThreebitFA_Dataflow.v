`timescale 1ns / 1ps
module threebitfulladder(input [2:0]a, input[2:0] b,input cin ,output[2:0] sum,output cout);
wire c1,c2;
assign sum[0]= a[0]^b[0]^cin;
assign c1 = a[0]&b[0]| (cin & (a[0]^b[0]));
assign sum[1]= a[1]^b[1]^c1;
assign c2 = a[1]&b[1]| (c1 & (a[1]^b[1]));
assign sum[2]= a[2]^b[2]^c2;
assign cout = a[2]&b[2]| (c2 & (a[2]^b[2]));
endmodule
