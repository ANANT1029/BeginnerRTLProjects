//file: jkflipfloptb.v - test bench for jk flipflop
`timescale 1ns/1ps
module jkflipfloptb;

reg clk, rst, J, K;
wire Q;

jkflipflop uut(
.clk(clk), .rst(rst), .J(J), .K(K), .Q(Q)
);

//clock generation
always #5 clk = ~clk;

initial begin 
$dumpfile("jkflipflop.vcd");
$dumpvars(0, jkflipfloptb);

clk = 0; rst = 1; J = 0; K = 0;
#10 rst = 0;
//Apply test patterns
J = 1; K = 0; #10; // set
J = 0; K = 1; #10; //RESET
J = 1; K = 1; #10; //TOGGLE
J = 0; K = 0; #10;//NO CHNAGE
J = 1; K = 1; #20; // TOGGLE AGAIN 
#10

$finish;

end 
endmodule 

