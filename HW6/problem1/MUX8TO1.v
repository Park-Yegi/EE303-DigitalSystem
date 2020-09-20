module MUX8TO1(I0, I1, I2, I3, I4, I5, I6, I7, S, OUT);
	
	input [3:0] I0, I1, I2, I3, I4, I5, I6, I7;
	input [2:0] S;
	output [3:0] OUT;

	wire [3:0] MID1, MID2;

	MUX4TO1 uMUX4TO1_1(I0, I1, I2, I3, S[1:0], MID1);
	MUX4TO1 uMUX4TO1_2(I4, I5, I6, I7, S[1:0], MID2);

	MUX2TO1 uMUX2TO1(MID1, MID2, S[2], OUT);
endmodule

	

	
