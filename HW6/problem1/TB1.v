module TB1();

	reg [3:0] I0, I1, I2, I3, I4, I5, I6, I7;
	reg [2:0] S;
	wire [3:0] OUT;

	MUX8TO1 uP1(I0, I1, I2, I3, I4, I5, I6, I7, S, OUT);

	initial begin
		I0=4'b0000; I1=4'b0001; I2=4'b0010; I3=4'b0011; I4=4'b0100; I5=4'b0101; I6=4'b0110; I7=4'b0111;
		S=3'b010;
		#10
		I0=4'b1100; I1=4'b0011; I2=4'b1010; I3=4'b0101; I4=4'b0110; I5=4'b1001; I6=4'b0000; I7=4'b1111;
		S=3'b110;
		#10;
		I0=4'b1110; I1=4'b1101; I2=4'b1011; I3=4'b0111; I4=4'b1000; I5=4'b0100; I6=4'b0010; I7=4'b0001;
		S=3'b000;
		#10;
		I0=4'b1111; I1=4'b1110; I2=4'b1101; I3=4'b1100; I4=4'b1011; I5=4'b1010; I6=4'b1001; I7=4'b1000;
		S=3'b011;
		#10
		$finish();
	end

	initial begin
		$dumpfile("TB1.dmp");
		$dumpvars;
	end
endmodule



	


