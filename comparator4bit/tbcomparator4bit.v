`timescale 1ns / 1ps
module tbcomparator4bit;

reg[3:0] A, B;
wire AgtB , AltB, AeqB;

comparator4bit dut(.A(A), .B(B), .AgtB(AgtB), .AltB(AltB), .AeqB(AeqB));
initial begin
$dumpfile("comparator4bit.vcd");
$dumpvars(0, tbcomparator4bit);

$display("A B | A>B A<B A==B");
A = 4'b0000; B = 4'b0000; #10;
$display("%b %b | %b %b %b", A, B, AgtB, AltB, AeqB);
A = 4'b0101; B = 4'b0011; #10;
$display("%b %b | %b %b %b", A, B, AgtB, AltB, AeqB);
A = 4'b0011; B = 4'b1010; #10;
$display("%b %b | %b %b %b", A, B, AgtB, AltB, AeqB);
A = 4'b1111; B = 4'b1111; #10;
$display("%b %b | %b %b %b", A, B, AgtB, AltB, AeqB);

$finish;
end 
endmodule
