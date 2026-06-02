`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 29.05.2026 22:24:18
// Design Name: 
// Module Name: decoder2x4
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


module decoder2x4(
input a,
input b,
output reg y0,y1,y2,y3
    );
    always @(*) begin
    y0=0;
    y1 =0;
    y2 =0;
    y3 = 0;
        if(a==b && a==0)
        y0 = 1;
        else if(a==0 && b==1)
        y1 = 1;
        else if(a==1 && b==0)
        y2 = 1;
        else
        y3 = 1;
    end
endmodule
