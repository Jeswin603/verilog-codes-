module basic_gate(
 	input x,y,
 	output AND,OR,NAND,NOR,NOT);

	and  g1 (AND,x,y);
	nand g2 (NAND,x,y);
	or   g3 (OR,x,y);
	nor  g4 (NOR,x,y);
	not  g5 (NOT,x);

endmodule
