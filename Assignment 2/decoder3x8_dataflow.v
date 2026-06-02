`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 02.06.2026 15:59:20
// Design Name: 
// Module Name: decoder3x8_dataflow
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


module decoder3x8_dataflow(
input a,
input b,
input c,
output [7:0]y
    );
    wire w1,w2,w3;
    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = ~c;
    assign y[0]=w1&w2&w3;
    assign y[1]=w1&w2&c;
    assign y[2]=w1&b&w3;
    assign y[3]=w1&b&c;
    assign y[4]=a&w2&w3;
    assign y[5]=a&w2&c;
    assign y[6]=a&b&w3;
    assign y[7]=a&b&c;
endmodule
