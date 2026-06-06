`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 08:49:57
// Design Name: 
// Module Name: tb_BCD_encoder
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


module tb_BCD_encoder;

reg [9:0] D;
wire [3:0] B;

BCD_Encoder B1(
    .D(D),
    .B(B)
);

integer i;

initial begin

    $monitor("D=%b B=%b", D, B);

    for(i = 0; i < 10; i = i + 1) begin
    
        D = 0;      
        D[i] = 1;   
        
        #10;
        
    end

    $finish;

end

endmodule
