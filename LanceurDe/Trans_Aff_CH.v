module Trans_Aff_CH(NB_Face, Id_Un, Id_Diz, Id_Cent, Id_d);

input[6:0] NB_Face;

output[3:0] Id_Un;
output[3:0] Id_Diz;
output[3:0] Id_Cent;
output[3:0] Id_d;

reg[3:0] Id_Un;
reg[3:0] Id_Diz;
reg[3:0] Id_Cent;
reg[3:0] Id_d;

always@(NB_Face)


begin
		case (NB_Face)
			
				4:   		begin
								Id_Un   <= 4;
								Id_Diz  <= 12;
								Id_Cent <= 12;
								Id_d <= 11;
							end
						  
				6:   		begin
								Id_Un   <= 6;
								Id_Diz  <= 12;
								Id_Cent <= 12;
								Id_d <= 11;
							end
							
				8:   		begin
								Id_Un   <= 8;
								Id_Diz  <= 12;
								Id_Cent <= 12;
								Id_d <= 11;
							end
							
							
						
				10:  		begin
								Id_Un   <= 10;
								Id_Diz  <= 1;
								Id_Cent <= 12;
								Id_d <= 11;
							end
							
				12:  		begin
								Id_Un   <= 2;
								Id_Diz  <= 1;
								Id_Cent <= 12;
								Id_d <= 11;
						   end
							
				20:  		begin
								Id_Un   <= 10;
								Id_Diz  <= 2;
								Id_Cent <= 12;
								Id_d <= 11;
							end
							
				30:  		begin
								Id_Un   <= 10;
								Id_Diz  <= 3;
								Id_Cent <= 12;
								Id_d <= 11;
							end
							
				100: 		begin
								Id_Un  <= 10;
								Id_Diz  <= 10;
								Id_Cent <= 1;
								Id_d <= 11;
							end
							
				default: begin
								Id_Un   <= 12;
								Id_Diz  <= 12;
								Id_Cent <= 12;
								Id_d <= 11;
							end
		endcase
	end

endmodule