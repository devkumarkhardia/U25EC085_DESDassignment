`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 21:27:05
// Design Name: 
// Module Name: tb_MUX_Nx1
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
`timescale 1ns / 1ps

module tb_MUX_Nx1;

parameter N = 8;

reg [N-1:0] I;
reg [$clog2(N)-1:0] S;
wire f;

MUX_Nx1 #(.N(N)) DUT(
    .I(I),
    .S(S),
    .f(f)
);

integer i,j;

initial begin

    $monitor("Time=%0t I=%b S=%b f=%b",
              $time, I, S, f);

    for(i = 0; i < 256; i = i + 1) begin

        I = i;

        for(j = 0; j < N; j = j + 1) begin

            S = j;

            #10;

        end
    end

    $finish;

end

endmodule
