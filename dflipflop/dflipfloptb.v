//file - testbench dflipfloptb.v
`timescale 1ns/1ps
module dflipfloptb;

reg clk, rst, D;
wire Q;

//instantiate the d flipflop
dflipflop uut (
.clk(clk), 
.rst(rst), 
.D(D), 
.Q(Q)
);
//clock generation: 10ns period (100mhz)
always #5 clk = ~clk;

initial begin
$dumpfile("dflipflop.vcd");

$dumpvars(0, dflipfloptb);

//initialize signals
clk = 0; rst = 0; D = 0;

//Apply reset 
#3 rst = 1;

#7 rst = 0;
// test pattern
#10 D = 1; // SHOULD LATCH D = 1 ON N EXT RISING EDGE 
#10 D = 0; //SHOULD latch D = 0 on next rising edge 
#10 D = 1;
#10 D = 1;

#10 D = 0;

#10 D = 1;
$finish;
end 
endmodule 


