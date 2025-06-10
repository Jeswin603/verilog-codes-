module basic_gate_tb;
wire AND,NAND,OR,NOR,NOT;
reg x,y;

basic_gate uut (
	.AND(AND),
	.NAND(NAND),
	.NOR(NOR),
	.OR(OR),
	.NOT(NOT),
	.x(x),
	.y(y)
);

initial begin
{x,y}=2'b00;
end
always #5 {x,y} = {x,y}+1'b1;


initial begin
  $monitor($time, 
    " X=%b : Y=%b :: AND=%b OR=%b NAND=%b NOR=%b NOT=%b", 
    x, y, AND, OR, NAND, NOR, NOT);

end
endmodule
