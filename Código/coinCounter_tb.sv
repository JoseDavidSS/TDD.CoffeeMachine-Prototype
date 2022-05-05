module coinCounter_tb ();

logic clk, rst, m100, m500;
reg [7:0] total;

coinCounter contadorMonedas (clk, rst, m100, m500, total);

always
	#5 clk = !clk;

initial begin

rst = 0;
clk = 0;
m100 = 0;
m500 = 0;

#10
rst = 1;

#10
rst = 0;

#20
m100 = 1;

#20
m100 = 0;

#20
m500 = 1;

#20
m500 = 0;

#20
rst = 1;

#20
rst = 0;

end



endmodule 
