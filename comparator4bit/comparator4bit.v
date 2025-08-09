module comparator4bit(
input[3:0] A,
input[3:0] B,
output AgtB,
output AltB,
output AeqB
);
assign AgtB = (A > B);
assign AltB = (A < B);
assign AeqB = (A == B);
endmodule