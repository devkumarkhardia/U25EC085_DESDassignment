`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 22:37:45
// Design Name: 
// Module Name: tb_encoder4x2
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


module tb_encoder4x2;
reg [3:0]y;
wire a,b;
encoder4x2 E1(
.a(a),
.b(b),
.y(y)
);
initial begin

    y = 4'b0001;
    #10;

    y = 4'b0010;
    #10;

    y = 4'b0100;
    #10;

    y = 4'b1000;
    #10;

    $finish;

end
endmodule
