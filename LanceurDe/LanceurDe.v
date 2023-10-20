module LanceurDe(ClkIn, BLancer, Choix, Ch_Uni, Ch_Diz, Ch_Ce, Ch_D, Res_Uni, Res_Diz);

input ClkIn;
input BLancer;
input [7:0] Choix;

output [6:0] Ch_Uni, Ch_Diz, Ch_Ce, Ch_D, Res_Uni, Res_Diz;

wire[6:0]			binchoix;
wire[6:0]			ValMax;
wire[6:0]			ValMin;
wire[6:0]			ValCPT;
wire[6:0]			Result;

wire[3:0]			Id_Ch_Uni;
wire[3:0]			Id_Ch_Diz;
wire[3:0]			Id_Ch_Ce;
wire[3:0]			Id_Ch_D;
wire[3:0]			Id_Res_Uni;
wire[3:0]			Id_Res_Diz;

TransSWBin	TSWBin(Choix,binchoix);

Trans_Aff_CH TAffChoix(binchoix, Id_Ch_Uni, Id_Ch_Diz, Id_Ch_Ce, Id_Ch_D);

TransBinCPT TBinCPT(binchoix, ValMin, ValMax);

CPTAleat CAleat(ClkIn, ValMin, ValMax, ValCPT);

MemoireDe MDe(BLancer, ValCPT, Result);

Trans_Aff_Res TAffRes(Result, Id_Res_Uni, Id_Res_Diz);

Trans_7seg	ChoixUni(Id_Ch_Uni, Ch_Uni);
Trans_7seg	ChoixDiz(Id_Ch_Diz, Ch_Diz);
Trans_7seg	ChoixCen(Id_Ch_Ce, Ch_Ce);
Trans_7seg	ChoixD(Id_Ch_D, Ch_D);

Trans_7seg	ResUni(Id_Res_Uni, Res_Uni);
Trans_7seg	ResDiz(Id_Res_Diz, Res_Diz);

endmodule 