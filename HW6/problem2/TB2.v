module TB2();

	reg [3:0] A, B;
	reg SEL;
	wire [3:0] F;
	wire C, V;

	AU_4b uP2(A, B, SEL, F, C, V);

	initial begin
		//ADD
		A = 4'b0100; B = 4'b0011; SEL=1'b0;
		#10
		A = 4'b0100; B = 4'b0101; SEL=1'b0;
		#10
		A = 4'b0011; B = 4'b1011; SEL=1'b0;
		#10
		A = 4'b1011; B = 4'b1110; SEL=1'b0;
		#10
		//SUBTRACT
		A = 4'b0100; B = 4'b0011; SEL=1'b1;
		#10
		A = 4'b0100; B = 4'b0101; SEL=1'b1;
		#10
		A = 4'b0011; B = 4'b1011; SEL=1'b1;
		#10
		A = 4'b1011; B = 4'b1110; SEL=1'b1;
		#10

		$finish();
	end

	initial begin
		$dumpfile("TB2.dmp");
		$dumpvars;
	end
endmodule



	


