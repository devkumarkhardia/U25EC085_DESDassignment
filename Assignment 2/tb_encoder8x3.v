`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 08:21:01
// Design Name: 
// Module Name: tb_encoder8x3
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


module tb_encoder8x3;
reg [7:0]y;
wire a,b,c;
encoder8x3 E1(
.y(y),
.a(a),
.b(b),
.c(c)
);
initial begin
    y = 8'b00000001;
    #10;
    
    y = 8'b00000010;
    #10;
    
    y = 8'b00000100;
    #10;
    
    y = 8'b00001000;
    #10;
    
    y = 8'b00010000;
    #10;
    
    y = 8'b00100000;
    #10;
    
    y = 8'b01000000;
    #10;
    
    y = 8'b10000000;
    #10;
   $finish;
end
endmodule
