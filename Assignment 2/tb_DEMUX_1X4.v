`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 13:59:59
// Design Name: 
// Module Name: tb_DEMUX_1X4
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


module tb_DEMUX_1X4;
reg f;
reg [1:0] s;
wire [3:0] y;
DEMUX_1X4 D1(
    .f(f),
    .s(s),
    .y(y)
);
integer i;
initial begin
    f = 1;
    $monitor("s=%b y=%b",s,y);
    for(i = 0;i<4;i=i+1) begin
        s = i;
        #10;
    end
    $finish;
end
endmodule
