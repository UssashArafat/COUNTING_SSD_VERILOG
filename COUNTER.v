module COUNTER(RESET,CLOCK,COUNT_SSD);
input wire CLOCK, RESET;
output reg [6:0]COUNT_SSD;

reg[2:0]COUNT;

always @(COUNT)
	case (COUNT)
		3'b000 : COUNT_SSD = 7'b1000000;
		3'b001 : COUNT_SSD = 7'b1111001;
		3'b010 : COUNT_SSD = 7'b0100100;
		3'b011 : COUNT_SSD = 7'b0110000;
		3'b100 : COUNT_SSD = 7'b0011001;
		3'b101 : COUNT_SSD = 7'b0010010;
		3'b110 : COUNT_SSD = 7'b0000010;
		3'b111 : COUNT_SSD = 7'b1111000;
		default : COUNT_SSD = 7'b0000110;
	endcase


always @(posedge CLOCK or negedge RESET)
	if (!RESET)
		COUNT <= 3'b000;
	else
		COUNT <= COUNT + 1;
		
endmodule
