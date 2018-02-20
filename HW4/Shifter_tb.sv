module Shifter_tb;
reg [15:0] Shift_In; //This is the number to perform shift operation on
reg [3:0] Shift_Val; //Shift amount (used to shift the 'Shift_In')
reg  Mode; // To indicate SLL or SRA 
wire [15:0] Shift_Out; //Shifter value

Shifter DUT(.Shift_Out(Shift_Out), .Shift_In(Shift_In), .Shift_Val(Shift_Val), .Mode(Mode));

initial begin

assign Shift_In = 16'b0011001100110011;
assign Shift_Val = 4'h0;
assign Mode = 0;

//Test shift left
repeat(100) begin
	assign Shift_Val = 4'd0;
	repeat(16) begin
		#5
		assert (Shift_Out == Shift_In<<Shift_Val);
		assign Shift_Val = Shift_Val + 1;
		end
	assign Shift_In = Shift_In + 1;
end

assign Shift_In = 16'b0011001100110011;
assign Shift_Val = 4'h0;
assign Mode = 1;

//Test shift right
repeat(100) begin
	assign Shift_Val = 4'd0;
	repeat(16) begin
		#5
		assert (Shift_Out == Shift_In>>Shift_Val);
		assign Shift_Val = Shift_Val + 1;
		end
	assign Shift_In = Shift_In + 1;
end
end
endmodule
