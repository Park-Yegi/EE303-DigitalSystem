module MUX2TO1(A, B, SEL, F);
	
	input [3:0] A, B;
	input SEL;
	output [3:0] F;

	assign F = (SEL == 1'b0) ? A :
			   (SEL == 1'b1) ? B : 4'bx;

endmodule

	

	
