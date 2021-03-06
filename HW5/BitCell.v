module BitCell(Bitline1, Bitline2, clk, rst, D, WriteEnable, ReadEnable1, ReadEnable2);
input clk, rst, D, WriteEnable, ReadEnable1, ReadEnable2;
inout Bitline1, Bitline2;
wire q;

dff storage(.q(q), .d(D), .wen(WriteEnable), .clk(clk), .rst(rst));

assign Bitline1 = (ReadEnable1) ? q : 1'bz;
assign Bitline2 = (ReadEnable2) ? q : 1'bz;

endmodule
