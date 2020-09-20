module P3_BE(A1, A0, B1, B0, A_lesser_than_B);
	
	input A1, A0, B1, B0;
	output A_lesser_than_B;

	assign A_lesser_than_B = (A1 == 1'b1)? (B1&B0):
		(A0 == 1'b1)? B1:
		(A0 == 1'b0)? (B0|B1):
		1'bx;

endmodule

