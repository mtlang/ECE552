module ALU_tb;
reg [3:0] ALU_In1, ALU_In2;
reg [1:0] Opcode;
wire [3:0] ALU_Out;
wire Error;
reg [3:0] and_val;

ALU DUT(ALU_Out, Error, ALU_In1, ALU_In2, Opcode);

initial begin

assign ALU_In1 = 4'b0;
assign ALU_In2 = 4'b0;
assign Opcode = 2'b0;

// Loop to test addition
repeat(16) begin
	assign ALU_In2 = 4'b0;
	repeat(16) begin
	#20;
	assert (ALU_Out == ALU_In1 + ALU_In2);
	assign ALU_In2 = ALU_In2 + 1;
	end
assign ALU_In1 = ALU_In1 + 1;
end

// Test Subtraction
assign ALU_In1 = 4'b0;
assign ALU_In2 = 4'b0;
assign Opcode = 2'b1;
repeat(16) begin
	assign ALU_In2 = 4'b0;
	repeat(16) begin
	#20;
	assert (ALU_Out == ALU_In1 - ALU_In2);
	assign ALU_In2 = ALU_In2 + 1;
	end
assign ALU_In1 = ALU_In1 + 1;
end

// Test nand
assign ALU_In1 = 4'b0;
assign ALU_In2 = 4'b0;
assign Opcode = 2'h2;
repeat(16) begin
	assign ALU_In2 = 4'b0;
	repeat(16) begin
	#20;
	assign and_val = ALU_In1 & ALU_In2;
	assert (ALU_Out == ~and_val);
	assign ALU_In2 = ALU_In2 + 1;
	end
assign ALU_In1 = ALU_In1 + 1;
end

// Test xor
assign ALU_In1 = 4'b0;
assign ALU_In2 = 4'b0;
assign Opcode = 2'h3;
repeat(16) begin
	assign ALU_In2 = 4'b0;
	repeat(16) begin
	#20;
	assert (ALU_Out == ALU_In1 ^ ALU_In2);
	assign ALU_In2 = ALU_In2 + 1;
	end
assign ALU_In1 = ALU_In1 + 1;
end

end

$finish;

endmodule
