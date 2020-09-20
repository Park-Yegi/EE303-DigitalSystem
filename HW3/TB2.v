module TB2();

	reg A, B, C, D;
	wire F;

	P2 uP2(A, B, C, D, F);

	initial begin
		A = 0;	B = 0;	C = 0;	D = 0;
		#10;
		A = 1;	B = 1;	C = 0;	D = 1;
		#10;
		A = 1;	B = 0;	C = 1;	D = 1;
		#10;
		$finish();
	end

	initial begin
		$dumpfile("TB2.dmp");
		$dumpvars;
	end
endmodule



	


