`timescale 1ns/1ps
module ripplecarryaddertb;
reg[3:0] A, B;
reg Cin;
wire[3:0] Sum;
wire Cout;
ripplecarryadder uut(
.A(A), .B(B), .	Cin(Cin), 
.Sum(Sum), .Cout(Cout)
);

initial begin
$dumpfile("ripplecarryadder.vcd"); //for GTKWAVE
$dumpvars(0, ripplecarryaddertb);
//Test case: 1
A = 4'b0001; B = 4'b0010; Cin = 0; #10;
//Test case:2
A = 4'b0101; B = 4'b0011; Cin = 0; #10;
//Test case: 3
A = 4'b1111; B = 4'b0001; Cin = 0; #10;
//Test case: 4
A = 4'b1010; B = 4'b0101; Cin = 1; #10;
$finish;
end
endmodule
 
