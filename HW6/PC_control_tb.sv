module PC_control_tb;
localparam PC_base = 16'h3333;
localparam PC_inc = 16'h3335;
localparam branch_val = 9'h1AA;
localparam PC_branch = 16'h3689;

reg [2:0] C; 
reg [8:0] I;
reg [2:0] F; // F[2] = N, F[1] = V, F[0] = Z
reg [15:0] PC_in;
wire [15:0] PC_out;

PC_control DUT(.PC_out(PC_out), .C(C), .I(I), .F(F), .PC_in(PC_in));

initial begin

assign PC_in = PC_base;
assign C = 3'b000;
assign I = branch_val;
assign F = 3'bxx0;

// Test NEQ
#5;
assert (PC_out == PC_branch);

assign F = 3'bxx1;
#5
assert (PC_out == PC_inc);

// Test EQ
assign C = 3'b001;
#5
assert (PC_out == PC_branch);

assign F = 3'bxx0;
#5
assert (PC_out == PC_inc);

// Test GT
assign F = 3'b0x0;
assign C = 3'b010;
#5
assert (PC_out == PC_branch);

assign F = 3'b1x0;
#5
assert (PC_out == PC_inc);

// Test LT
assign F = 3'b1xx;
assign C = 3'b011;
#5
assert (PC_out == PC_branch);

assign F = 3'b0xx;
#5
assert (PC_out == PC_inc);

// Test GTE
assign F = 3'bxx1;
assign C = 3'b100;
#5
assert (PC_out == PC_branch);

assign F = 3'b0x0;
#5
assert (PC_out == PC_branch)

assign F = 3'b1x0;
#5
assert (PC_out == PC_inc);

// Test LTE
assign F = 3'b1xx;
assign C = 3'b101;
#5
assert (PC_out == PC_branch);

assign F = 3'bxx1;
#5
assert (PC_out == PC_branch)

assign F = 3'b0x0;
#5
assert (PC_out == PC_inc);

// Test OVFL
assign F = 3'bx1x;
assign C = 3'b110;
#5
assert (PC_out == PC_branch);

assign F = 3'bx0x;
#5
assert (PC_out == PC_inc);

// Test UNCOND
assign F = 3'bxxx;
assign C = 3'b111;
#5
assert (PC_out == PC_branch);

end
endmodule

