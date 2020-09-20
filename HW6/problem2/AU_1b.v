module AU_1b(A, B, Cin, SEL, F, Cout);
	
	input A, B;
	input Cin;
	input SEL;
	output F;
	output Cout;

	wire fin_B;

	B_SELECT_MUX uMUX(B, SEL, fin_B);
	FA_1b uFA_1b(A, fin_B, Cin, F, Cout);


endmodule

	

	
