module addsub_4bit_tb;
reg [3:0] A, B;
wire [3:0] Sum;
wire Ovfl;
reg sub;
addsub_4bit DUT(.Sum(Sum), .Ovfl(Ovfl), .AA(A), .BB(B), .sub(sub));

initial begin

assign A = 0;
assign B = 0;
assign sub = 0;
// Loop to test addition
repeat(16) begin
	assign B = 4'b0;
	repeat(16) begin
	#20;
	assert (Sum == A + B);
	assign B = B + 1;
	end
assign A = A + 1;
end

assign sub = 1;

// Loop to test subtraction
repeat(16) begin
	assign B = 4'b0;
	repeat(16) begin
	#20;
	assert (Sum == A - B);
	assign B = B + 1;
	end
assign A = A + 1;
end

end
$finish;
endmodule
