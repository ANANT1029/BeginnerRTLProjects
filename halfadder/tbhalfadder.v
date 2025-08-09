//file: tbhalfadder.v
//description: testbench for 1-bit half adder 
`timescale 1ns / 1ps
module tbhalfadder;
//inputs
reg a, b;
//outputs
wire sum, carry;
//instantiate the half adder
halfadder dut (.a(a), .b(b), .sum(sum), .carry(carry));

initial begin
//waveform dump
$dumpfile("halfadderwave.vcd");
$dumpvars(0, tbhalfadder);

$display("A B | Sum carry");

//Test case 1
a = 0; b = 0; #10
$display("%b %b | %b %b", a, b, sum, carry);
//Test case 2
a = 0; 
b = 1;
#10; 
$display("%b %b | %b %b", a, b, sum, carry);
//Test case: 3
a = 1;
 b = 0;
#10;
$display("%b %b | %b %b", a, b, sum, carry);

//Test case: 4
a = 1;
b = 1;
#10;
$display("%b %b | %b %b", a, b, sum, carry);
$finish;
end 
endmodule 
