module Trans_Aff_Res(CAP, ID_Uni, ID_Diz);

input[6:0] CAP;

output[3:0] ID_Diz;
output[3:0] ID_Uni;

reg[3:0] ID_Uni;
reg[3:0] ID_Diz;


always @(CAP)
begin
	ID_Uni <= (CAP % 10);
	ID_Diz <= ((CAP - ID_Uni)/10);
end



endmodule