//file: half subtractor.v
//this was a verilog code for a 1 bit subtractor 
module halfsubtractor(
input A, B, // bit to subtract and from to subtractor 
output Diff, Borrow      // output diff and borrow 
);

// combinational logic for half subtractor 
assign Diff = A ^ B;  // XOR GIVES THE DISFFERENCE 
assign Borrow = ~A & B;  //Borrow is occurs when A = 0 & B = 1
endmodule 
