//File: tbmux2to1.v
//description: Testbench for the 2to1 multiplexer.
`timescale 1ns / 1ps // define the simulation time units

module tbmux2to1;
//Declare the registers for the input to the dut 
reg a;
reg b;
reg sel;

//declare a wire for the output from the DUT 
wire y;
//instantiate the mux module we want to test 
//"dut" is the common name for the instance
mux2to1 dut (.y(y), .a(a), .b(b), .sel(sel));
//the initial block contains the sequence of the test inputs 
initial begin
//These commands create a waveform dump filr for viewing later 
$dumpfile("waveform.vcd");
$dumpvars(0, tbmux2to1);
//--- Test case 1: sel = 0, y should follow a ---
$display("---Testing with sel = 0 ---");
sel = 1'b0; a = 1'b0; b = 1'b1; #10; //wait 10ns

$display("Time=%0t ns, sel=%b, a=%b, b=%b -> y=%b", $time, sel, a, b, y);
a = 1'b1; #10; // y should change to 1
$display("Time=%0t ns, sel=%b, a=%b. b=%b -> y=%b", $time, sel, a, b, y);

//---Test case 2 : sel = 1, y should follow b ---
$display("---Testing with sel = 1---");
sel = 1'b1; a = 1'b0; b=1'b0; #10;
$display("Time=%t ns, sel=%b, a=%b, b=%b -> y=%b", $time, sel, a, b, y);
b = 1'b1; #10; // y should change to 1
$display("Time=%0t ns, sel=%b, a=%b, b=%b -> y=%b", $time, sel, a, b, y);
#10;
$finish; // end the simulation
end 
endmodule