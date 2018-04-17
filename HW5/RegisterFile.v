module RegisterFile(SrcData1, SrcData2, clk, rst, WriteReg, SrcReg1, SrcReg2, DstReg, DstData);
input clk, rst, WriteReg;
input [3:0] SrcReg1, SrcReg2, DstReg;
input [15:0] DstData;
inout [15:0] SrcData1, SrcData2;
wire [15:0] R_Wordline1, R_Wordline2, W_Wordline;

ReadDecoder_4_16 ReadDecoder1(.RegId(SrcReg1), .Wordline(R_Wordline1));
ReadDecoder_4_16 ReadDecoder2(.RegId(SrcReg2), .Wordline(R_Wordline2));

WriteDecoder_4_16 WriteDecoder(.RegId(DstReg), .WriteReg(WriteReg), .Wordline(W_Wordline));

Register Reg0(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[0]), .ReadEnable1(R_Wordline1[0]), 
	.ReadEnable2(R_Wordline2[0]), .D(DstData));

Register Reg1(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[1]), .ReadEnable1(R_Wordline1[1]), 
	.ReadEnable2(R_Wordline2[1]), .D(DstData));

Register Reg2(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[2]), .ReadEnable1(R_Wordline1[2]), 
	.ReadEnable2(R_Wordline2[2]), .D(DstData));

Register Reg3(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[3]), .ReadEnable1(R_Wordline1[3]), 
	.ReadEnable2(R_Wordline2[3]), .D(DstData));

Register Reg4(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[4]), .ReadEnable1(R_Wordline1[4]), 
	.ReadEnable2(R_Wordline2[4]), .D(DstData));

Register Reg5(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[5]), .ReadEnable1(R_Wordline1[5]), 
	.ReadEnable2(R_Wordline2[5]), .D(DstData));

Register Reg6(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[6]), .ReadEnable1(R_Wordline1[6]), 
	.ReadEnable2(R_Wordline2[6]), .D(DstData));

Register Reg7(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[7]), .ReadEnable1(R_Wordline1[7]), 
	.ReadEnable2(R_Wordline2[7]), .D(DstData));

Register Reg8(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[8]), .ReadEnable1(R_Wordline1[8]), 
	.ReadEnable2(R_Wordline2[8]), .D(DstData));

Register Reg9(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[9]), .ReadEnable1(R_Wordline1[9]), 
	.ReadEnable2(R_Wordline2[9]), .D(DstData));

Register Reg10(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[10]), .ReadEnable1(R_Wordline1[10]), 
	.ReadEnable2(R_Wordline2[10]), .D(DstData));

Register Reg11(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[11]), .ReadEnable1(R_Wordline1[11]), 
	.ReadEnable2(R_Wordline2[11]), .D(DstData));

Register Reg12(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[12]), .ReadEnable1(R_Wordline1[12]), 
	.ReadEnable2(R_Wordline2[12]), .D(DstData));

Register Reg13(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[13]), .ReadEnable1(R_Wordline1[13]), 
	.ReadEnable2(R_Wordline2[13]), .D(DstData));

Register Reg14(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[14]), .ReadEnable1(R_Wordline1[14]), 
	.ReadEnable2(R_Wordline2[14]), .D(DstData));

Register Reg15(.Bitline1(SrcData1), .Bitline2(SrcData2), .clk(clk), .rst(rst), 
	.WriteReg(W_Wordline[15]), .ReadEnable1(R_Wordline1[15]), 
	.ReadEnable2(R_Wordline2[15]), .D(DstData));

endmodule
