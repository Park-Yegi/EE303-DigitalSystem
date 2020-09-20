module TB3();

	reg A1, A0, B1, B0;
	wire A_lesser_than_B_ST, A_lesser_than_B_BE;

	P3_ST uST(A1, A0, B1, B0, A_lesser_than_B_ST);
	P3_BE uBE(A1, A0, B1, B0, A_lesser_than_B_BE);

	initial begin
		A1 = 0;	A0 = 0;	B1 = 0;	B0 = 0;
		#10;
		A1 = 0;	A0 = 1;	B1 = 1;	B0 = 0;
		#10;
		A1 = 1;	A0 = 0;	B1 = 0;	B0 = 1;
		#10;
		A1 = 0;	A0 = 0;	B1 = 1;	B0 = 1;
		#10;
		$finish();
	end

	initial begin
		$dumpfile("TB3.dmp");
		$dumpvars;
	end
endmodule



	


