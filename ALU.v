module ALU (A , B , ALUctrl , ALUResult , zero);
	input [31:0] A , B;
	input [2:0] ALUctrl;
	output reg [31:0] ALUResult;
	output reg zero;

	always@(ALUctrl or A or B) begin
		case(ALUctrl)
			0: //ADD
				ALUResult <= A+B;
			1: //SUB
				ALUResult <= A+(~B+1);
			2: //AND
				ALUResult <= A&B;
			3: //OR
				ALUResult <= A|B;
			4: //SLT
				begin 
		endcase
	end

	always @(ALUResult) begin
endmodule