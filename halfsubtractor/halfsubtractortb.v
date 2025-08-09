// File: Half subtractortb.v 
//testbench for the 1 bit half subtractor 
`timescale 1ns / 1ps
module halfsubtractortb;
reg A, B ; // input to the half subtractor 
wire Diff, Borrow; //outputs form the half subtractor 
//instantiate the half subtractor module
halfsubtractor uut (
.A(A), .B(B),
.Diff(Diff), .Borrow(Borrow)
);
initial begin 
//Dump waveform in gtk 
$dumpfile("halfsubtractor.vcd");

$dumpvars(0, halfsubtractortb);
//Display header
$display("A B | Diff Borrow");

$display("------------");
// apply all possible compbinations of A and B
A = 0; B = 0; #10;
$display("%b %b | %b %b", A, B, Diff, Borrow);
A = 0; B = 1; #10;
$display("%b %b | %b %b", A, B, Diff, Borrow);
A = 1; B = 0; #10;
$display("%b %b | %b %b", A, B, Diff, Borrow);
A = 1; B = 1; #10;
$display("%b %b | %b %b", A, B, Diff, Borrow); 

$finish;
end
endmodule

