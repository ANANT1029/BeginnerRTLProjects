//file: mux2to1.v
//description: A 2to1 Multiplexer using a behavioural model.

module mux2to1 (
//outputs
output reg y,
//inputs
input a,
input b, 
input sel
);

//the always block triggers whenever any of the input (s, b, sel)change.
//the'*' is a sensitivity list that means "any input used inside the block".
always @(*)begin
if (sel == 1'b0) begin
y = a; // if sel is 0, output is a 
end
else begin
y = b; //is sel is 1, output is b 
end 
end 
endmodule