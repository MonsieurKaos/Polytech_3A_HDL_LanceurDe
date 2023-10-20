module TransBinCPT(NB_Face, Min, Max);

input[6:0] NB_Face;	


output[6:0] Min;
output [6:0] Max;		

reg[6:0] Min;
reg[6:0] Max;

always @(NB_Face)
begin
	if (NB_Face ==0)
	begin
	Min <= 1;
	Max <= 1;
	end
	if ((NB_Face == 10) || (NB_Face == 100))
		begin
		Min <= 0;
			case (NB_Face) 	
				10 : Max <= 	9;
				100 : Max <= 	99;
			endcase
		end
		else
			begin
			Min <= 1;
				case (NB_Face) 	
					4 : Max <= 	4;
					6 : Max <= 	6;
					8 : Max <= 	8;
					12 : Max <= 	12;
					20 : Max <= 	20;
					30 : Max <= 	30;
				endcase
		 end	
end

endmodule