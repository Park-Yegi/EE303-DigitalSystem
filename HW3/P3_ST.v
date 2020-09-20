module P3_ST(A1, A0, B1, B0, A_lesser_than_B);
	
	input A1, A0, B1, B0;
	output A_lesser_than_B;
	wire A1_n, A0_n, and0_out, and1_out, and2_out;
		not
			inv0(A0_n, A0), inv1(A1_n, A1);
		and
			and0(and0_out, A1_n, B1),
			and1(and1_out, A0_n, A1_n, B0),
			and2(and2_out, A0, B0, B1);
		or
			or0(A_lesser_than_B, and0_out, and1_out, and2_out);
endmodule
	
