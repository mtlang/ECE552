module PSA_16bit (Sum, Error, A, B);
input [15:0] A, B; //Input values
output [15:0] Sum; //sum output
output Error; //To indicate overflows
wire Ovfl[3:0];
wire Ov2[1:0];

addsub_4bit A0(.Sum(Sum[3:0]), .Ovfl(Ovfl[0]), .AA(A[3:0]), .BB(B[3:0]), .sub(0));
addsub_4bit A1(.Sum(Sum[7:4]), .Ovfl(Ovfl[1]), .AA(A[7:4]), .BB(B[7:4]), .sub(0));
addsub_4bit A2(.Sum(Sum[11:8]), .Ovfl(Ovfl[2]), .AA(A[11:8]), .BB(B[11:8]), .sub(0));
addsub_4bit A3(.Sum(Sum[15:12]), .Ovfl(Ovfl[3]), .AA(A[15:12]), .BB(B[15:12]), .sub(0));

assign Ov2[0] = Ovfl[0] & Ovfl[1];
assign Ov2[1] = Ovfl[2] & Ovfl[3];

assign Error = Ov2[0] & Ov2[1];

endmodule
