`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 08:48:28
// Design Name: 
// Module Name: tb_MUX_2x1
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


module tb_MUX_2x1;
reg [1:0]I;
reg x;
wire f;
MUX_2x1 M1(
    .I(I),
    .x(x),
    .f(f)
);
integer i,j;
initial begin
    for(i=0;i<2;i=i+1) begin
        for(j=0;j<4;j=j+1) begin
            x = i;
            I =j;
            #10;
        end
    end
    $finish;
end
endmodule
