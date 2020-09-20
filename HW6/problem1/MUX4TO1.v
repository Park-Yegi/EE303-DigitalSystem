module MUX4TO1(A, B, C, D, SEL, F);
	
	input [3:0] A, B, C, D;
	input [1:0] SEL;
	output [3:0] F;

	assign F = (SEL == 2'b00) ? A :
			   (SEL == 2'b01) ? B :
			   (SEL == 2'b10) ? C :
			   (SEL == 2'b11) ? D : 4'bx;

endmodule

	

	
