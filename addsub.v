module addsub_4bit (Sum, Ovfl, AA, BB, sub);
input [3:0] AA, BB; //Input values
input sub; // add-sub indicator
output [3:0] Sum; //sum output
output Ovfl; //To indicate overflow
wire [3:0] Bf; //Values of B to be input into adders
wire [3:0] C; //Carry Signals

assign Bf = (sub) ? ~BB : BB;

full_adder_1bit A0 ( .A(AA[0]), .B(Bf[0]), .Cin(sub), .S(Sum[0]), .Cout(C[0]) );
full_adder_1bit A1 ( .A(AA[1]), .B(Bf[1]), .Cin(C[0]), .S(Sum[1]), .Cout(C[1]) );
full_adder_1bit A2 ( .A(AA[2]), .B(Bf[2]), .Cin(C[1]), .S(Sum[2]), .Cout(C[2]) );
full_adder_1bit A3 ( .A(AA[3]), .B(Bf[3]), .Cin(C[2]), .S(Sum[3]), .Cout(C[3]) );

assign Ovfl = C[3] ^ C[2];

endmodule

module full_adder_1bit(S, Cout, A, B, Cin);
input A, B, Cin;
output S, Cout;
wire S1, C1, C2;

// Determine S
assign S1 = A ^ B;
assign S = S1 ^ Cin;

// Determine Cout
assign C1 = Cin & S1;
assign C2 = A & B;
assign Cout = C1 | C2;

endmodule
