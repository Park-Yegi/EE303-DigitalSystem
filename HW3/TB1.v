module TB1();

	reg A, B, C;
	wire F;

	P1 uP1(A, B, C, F);

	initial begin
		A = 0;	B = 0;	C = 0;
		#10;
		A = 1;	B = 1;	C = 0;
		#10;
		A = 0;	B = 0;	C = 1;
		#10;
		$finish();
	end

	initial begin
		$dumpfile("TB1.dmp");
		$dumpvars;
	end
endmodule



	


