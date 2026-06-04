`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 13:27:44
// Design Name: 
// Module Name: tb_DEMUX_1X2
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


module tb_DEMUX_1X2;
reg f,s;
wire [1:0]y;

DEMUX_1X2 D1(
    .f(f),
    .s(s),
    .y(y)
);
integer i;
initial begin
    f = 1;
    $monitor("f=%b s=%b y=%b",f,s,y);
    for(i=0;i<2;i=i+1) begin
        s = i;
        #10;
    end
    $finish;
end
endmodule
