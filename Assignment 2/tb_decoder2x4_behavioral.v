`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 29.05.2026 22:34:41
// Design Name: 
// Module Name: tb_decoder2x4
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


module tb_decoder2x4;
decoder2x4 d1(.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
reg a,b;
wire y0,y1,y2,y3;
integer i,j;
initial begin
    for(i=0;i<2;i=i+1) begin
        for(j=0;j<2;j=j+1) begin
            a = i;
            b = j;
            #10;
        end
    end
    $finish;
end
endmodule
