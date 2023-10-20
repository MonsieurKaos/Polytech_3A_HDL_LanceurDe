module TransSWBin(SWIn, NB_Face);

input[7:0] SWIn;	


output[6:0] NB_Face;		

reg[6:0] NB_Face;

always @(SWIn)
begin
	case (SWIn) 	
		8'b00000001 : NB_Face <= 	7'b0000100;
		8'b00000010 : NB_Face <= 	7'b0000110;
		8'b00000100 : NB_Face <= 	7'b0001000;
		8'b00001000 : NB_Face <= 	7'b0001010;
		8'b00010000 : NB_Face <= 	7'b0001100;
		8'b00100000 : NB_Face <= 	7'b0010100;
		8'b01000000 : NB_Face <= 	7'b0011110;
		8'b10000000 : NB_Face <= 	7'b1100100;
		default : NB_Face <= 7'b0000000;
	endcase
end

endmodule