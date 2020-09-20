module B_SELECT_MUX(B, SEL, Y);
	
	input B;
	input SEL;
	output Y;

	assign Y = (SEL == 1'b0) ? B : ~B;

endmodule

	

	
