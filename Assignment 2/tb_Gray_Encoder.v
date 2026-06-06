`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 06:11:27
// Design Name: 
// Module Name: tb_Gray_Encoder
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


module tb_Gray_Encoder;
reg [3:0]B;
wire [3:0] G;

Gray_encoder G1(
    .B(B),
    .G(G)
);
integer i;
initial begin
    $monitor("B=%b G=%b",B,G);
    for(i=0;i<16;i=i+1) begin
        B = i;
        #10;
    end
    $finish;
end
endmodule
