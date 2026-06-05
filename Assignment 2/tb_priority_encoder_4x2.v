`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 23:52:47
// Design Name: 
// Module Name: tb_priority_encoder_4x2
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


module tb_priority_encoder_4x2;
reg [3:0] y;
wire a,b;
priority_encoder_4x2 P1(
.a(a),
.b(b),
.y(y)
);
integer i;
initial begin
$monitor("y=%b a=%b b=%b",y,a,b);
    for(i=0;i<16;i=i+1) begin
        y = i;
        #10;
    end
    $finish;
end
endmodule
