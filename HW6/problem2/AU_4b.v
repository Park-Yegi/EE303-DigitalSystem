module AU_4b(A, B, SEL, F, C, V);
	
	input [3:0] A, B;
	input SEL;
	output [3:0] F;
	output C, V;	//Carry and Overflow Flag

	wire [3:0] Cout;

	AU_1b uAU_1b_0(A[0], B[0], SEL, SEL, F[0], Cout[0]);
	AU_1b uAU_1b_1(A[1], B[1], Cout[0], SEL, F[1], Cout[1]);
	AU_1b uAU_1b_2(A[2], B[2], Cout[1], SEL, F[2], Cout[2]);
	AU_1b uAU_1b_3(A[3], B[3], Cout[2], SEL, F[3], Cout[3]);

	assign C = Cout[3];
	assign V = Cout[3] ^ Cout[2];

endmodule

	

	
