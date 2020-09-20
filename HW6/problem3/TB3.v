module TB3();

	reg CLK, reset, X;
	wire [3:0] Out;

	SeqCircuit uP3(CLK, reset, X, Out);

	//Clock with period of 10 units.
	initial begin
		CLK=1;
		repeat(20)
		#5 CLK = !CLK;
	end

	initial begin
		reset=1;
		X = 1'b1;
		#10
		reset=0;
		X = 1'b1;
		#10
		X = 1'b1;
		#10
		X = 1'b1;
		#10
		X = 1'b1;
		#10
		X = 1'b0;
		#10
		X = 1'b0;
		#10
		reset=1;
		X = 1'b0;
		#10
		reset=0;
		X = 1'b1;
		#10
		$finish();
	end

	initial begin
		$dumpfile("TB3.dmp");
		$dumpvars;
	end
endmodule



	


