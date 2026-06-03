`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 20:15:14
// Design Name: 
// Module Name: tb_MUX_4x1
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


module tb_MUX_4x1;
reg [3:0]I;
reg x,y;
wire f;
MUX_4x1 M1(
.I(I),
.x(x),
.y(y),
.f(f)
);
integer i,j,k;
initial begin
    for(i=0;i<2;i=i+1) begin
        for(j=0;j<2;j=j+1) begin
            for(k=0;k<16;k=k+1) begin
                x=i;
                y=j;
                I = k;
                #10;
            end
        end
    end
    $finish;
end
endmodule
