`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 02.06.2026 16:04:21
// Design Name: 
// Module Name: tb_decoder3x8_dataflow
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


module tb_decoder3x8_dataflow;

reg a,b,c;
wire [7:0] y;

integer i;

decoder3x8_dataflow d1(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);
initial begin
    $monitor("a=%b b=%b c=%b y=%b",a,b,c,y);
    for(i=0; i<8; i=i+1) begin        
        {a,b,c} = i;        
       #10;     
    end
    $finish;
end
endmodule
