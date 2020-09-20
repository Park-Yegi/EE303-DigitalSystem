module FA_1b(A, Y, Cin, F, Cout);
	
	input A, Y;
	input Cin;
	output F;
	output Cout;

	wire xor1, and1, and2;

	assign xor1 = A ^ Y;
	assign and1 = A & Y;
	assign and2 = xor1 & Cin;

	assign F = xor1 ^ Cin;
	assign Cout = and1 | and2;

endmodule

	

	
