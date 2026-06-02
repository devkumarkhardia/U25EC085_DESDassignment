`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 02.06.2026 14:15:53
// Design Name: 
// Module Name: tb_decoder2x4_dataflow
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


module tb_decoder2x4_dataflow;
reg x,y;
wire y0,y1,y2,y3;
decoder2x4_dataflow D1(
.x(x),
.y(y),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3)
);
integer i,j;
initial begin
    $monitor("x=%b y=%b y0=%b y1=%b y2=%b y3=%b",x,y,y0,y1,y2,y3);
    for(i=0;i<2;i=i+1) begin
        for(j=0;j<2;j=j+1) begin
            x=i;
            y=j;
            #10;
        end
    end
    $finish;
end
endmodule
