module CPTAleat(Clk, Min, Max, CMP);

input Clk;
input [6:0]Min;
input [6:0]Max;

output[6:0]	CMP;
reg[6:0]	CMP;

// Main process (full synchronous module)
always @(negedge (Clk))
begin
	CMP <= CMP+1;
	if (CMP > Max-1)
		begin
		CMP<= Min;
		end
end 
endmodule