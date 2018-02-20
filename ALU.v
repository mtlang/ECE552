module ALU (ALU_Out, Error, ALU_In1, ALU_In2, Opcode);
input [3:0] ALU_In1, ALU_In2;
input [1:0] Opcode; 
output [3:0] ALU_Out;
output Error; // Just to show overflow
wire [3:0] add_out;
wire [3:0] and_out;
wire [3:0] nand_out;
wire [3:0] xor_out;
wire [3:0] logic_out;

addsub_4bit adder(.Sum(add_out), .Ovfl(Error), .AA(ALU_In1), .BB(ALU_In2), .sub(Opcode[0]));

assign and_out = ALU_In1 & ALU_In2;
assign nand_out = ~and_out;

assign xor_out = ALU_In1 ^ ALU_In2;

assign logic_out = (Opcode[0]) ? xor_out : nand_out;
assign ALU_Out = (Opcode[1]) ? logic_out : add_out;

endmodule
