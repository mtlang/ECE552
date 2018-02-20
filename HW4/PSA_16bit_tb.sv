module PSA_16bit_tb;
reg [15:0] A, B; //Input values
wire [15:0] Sum; //sum output
wire Error; //To indicate overflows

PSA_16bit DUT(.A(A), .B(B), .Sum(Sum));

initial begin

assign A = 16'b0;
assign B = 16'b0;

//Test Additions
repeat(16) begin
	assign B = 16'b0;
	repeat(16) begin
		#5
		assert ((Sum[3:0] == A[3:0] + B[3:0]) | Error);
		assert ((Sum[7:4] == A[7:4] + B[7:4]) | Error);
		assert ((Sum[11:8] == A[11:8] + B[11:8]) | Error);
		assert ((Sum[15:12] == A[15:12] + B[15:12]) | Error);
		assign B = B + 16'h1111;
		end
	assign A = A + 16'h1111;
end
end
endmodule
