`timescale 1ns / 1ps
module tb;reg [2:0]a;reg [2:0] b; reg cin; wire [2:0]sum;wire cout;
integer i,j,k;
threebitfulladder t1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
for(i=0;i<8;i=i+1)
begin
    for(j=0;j<8;j=j+1)
    begin
        for(k=0;k<2;k=k+1)
        begin
            a=i;
            b=j;
            cin=k;
            #10;
        end
    end
end
$finish;
end
endmodule
