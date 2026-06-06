`timescale 1ns / 1ps

module tb_Basiclogic_MUX;

reg A, B;

wire NOT_OUT;
wire AND_OUT;
wire OR_OUT;
wire NAND_OUT;
wire NOR_OUT;
wire XOR_OUT;
wire XNOR_OUT;

Basiclogic_MUX DUT(
    .A(A),
    .B(B),

    .NOT_OUT(NOT_OUT),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .NAND_OUT(NAND_OUT),
    .NOR_OUT(NOR_OUT),
    .XOR_OUT(XOR_OUT),
    .XNOR_OUT(XNOR_OUT)
);

integer i;

initial begin

    $monitor(
    "A=%b B=%b NOT=%b AND=%b OR=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
    A,
    B,
    NOT_OUT,
    AND_OUT,
    OR_OUT,
    NAND_OUT,
    NOR_OUT,
    XOR_OUT,
    XNOR_OUT
    );

    for(i = 0; i < 4; i = i + 1) begin

        {A,B} = i;

        #10;

    end

    $finish;

end

endmodule
