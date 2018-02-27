module Register(Bitline1, Bitline2, clk, rst, WriteReg, ReadEnable1, ReadEnable2, D);
input clk, rst, WriteReg, ReadEnable1, ReadEnable2;
input [15:0] D;
inout [15:0] Bitline1, Bitline2;

BitCell Bit0(.Bitline1(Bitline1[0]), .Bitline2(Bitline2[0]), .clk(clk),
		.rst(rst), .D(D[0]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit1(.Bitline1(Bitline1[1]), .Bitline2(Bitline2[1]), .clk(clk),
		.rst(rst), .D(D[1]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit2(.Bitline1(Bitline1[2]), .Bitline2(Bitline2[2]), .clk(clk),
		.rst(rst), .D(D[2]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit3(.Bitline1(Bitline1[3]), .Bitline2(Bitline2[3]), .clk(clk),
		.rst(rst), .D(D[3]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit4(.Bitline1(Bitline1[4]), .Bitline2(Bitline2[4]), .clk(clk),
		.rst(rst), .D(D[4]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit5(.Bitline1(Bitline1[5]), .Bitline2(Bitline2[5]), .clk(clk),
		.rst(rst), .D(D[5]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit6(.Bitline1(Bitline1[6]), .Bitline2(Bitline2[6]), .clk(clk),
		.rst(rst), .D(D[6]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit7(.Bitline1(Bitline1[7]), .Bitline2(Bitline2[7]), .clk(clk),
		.rst(rst), .D(D[7]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit8(.Bitline1(Bitline1[8]), .Bitline2(Bitline2[8]), .clk(clk),
		.rst(rst), .D(D[8]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit9(.Bitline1(Bitline1[9]), .Bitline2(Bitline2[9]), .clk(clk),
		.rst(rst), .D(D[9]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit10(.Bitline1(Bitline1[10]), .Bitline2(Bitline2[10]), .clk(clk),
		.rst(rst), .D(D[10]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit11(.Bitline1(Bitline1[11]), .Bitline2(Bitline2[11]), .clk(clk),
		.rst(rst), .D(D[11]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit12(.Bitline1(Bitline1[12]), .Bitline2(Bitline2[12]), .clk(clk),
		.rst(rst), .D(D[12]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit13(.Bitline1(Bitline1[13]), .Bitline2(Bitline2[13]), .clk(clk),
		.rst(rst), .D(D[13]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit14(.Bitline1(Bitline1[14]), .Bitline2(Bitline2[14]), .clk(clk),
		.rst(rst), .D(D[14]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

BitCell Bit15(.Bitline1(Bitline1[15]), .Bitline2(Bitline2[15]), .clk(clk),
		.rst(rst), .D(D[15]), .WriteEnable(WriteReg), .ReadEnable1(ReadEnable1), 
		.ReadEnable2(ReadEnable2));

endmodule
