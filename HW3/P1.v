module P1(A, B, C, F);
	
	input A, B, C;
	output F;
	wire A_n, C_n, and0_out;
		not 
			inv0(A_n, A), inv1(C_n, C);
		and 
			and0(and0_out, A_n, B);
		or
			or0(F, and0_out, C_n);
endmodule
	
