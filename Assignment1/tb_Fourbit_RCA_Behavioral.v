`timescale 1ns / 1ps
module tb_Fourbit_RCA_Behavioral;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire  cout;
Fourbit_RCA_Behavioral f1(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);
integer i,j,k;
initial begin
    $monitor("a=%b b=%b cin=%b sum = %b cout = %b",a,b,cin,sum,cout);
    for(i=0;i<16;i=i+1)begin
        for(j=0;j<16;j=j+1)begin
            for(k=0;k<2;k=k+1)begin
                a = i;
                b = j;
                cin = k;
                #20;
            end
        end
    end
    $finish;
end
endmodule
