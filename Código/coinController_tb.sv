module coinController_tb ();

logic clk, rst, m100, m500, drink1, drink2, drink3, drink4, readyIn, enable;
logic [7:0] vuelto, precioBebida;
	
coinController coinController_testbench (clk, rst, m100, m500, drink1, drink2, drink3, drink4, readyIn, enable, vuelto, precioBebida);

always
	#5 clk = !clk;

initial begin

rst = 0;
clk = 0;
m100 = 0;
m500 = 0;
drink1 = 0;
drink2 = 0;
drink3 = 0;
drink4 = 0;
readyIn = 0;


#10
rst = 1;

#10
rst = 0;

#10
rst = 1;

#10
rst = 0;

#20
m100 = 1;

#20
m100 = 0;

#20
m100 = 1;

#20
m100 = 0;

#20
m500 = 1;

#20
m500 = 0;

#20
drink3 = 1;

#20
drink3 = 0;

#20
readyIn = 1;

#20
readyIn = 0;




#500
rst = 1;

#10
rst = 0;

#20
m500 = 1;

#20
m500 = 0;

#20
m500 = 1;

#20
m500 = 0;

#20
drink2 = 1;

#20
drink2 = 0;

#20
readyIn = 1;

#20
readyIn = 0;

#80
rst = 1;

#20
rst = 0;

#20
rst = 1;

#20
rst = 0;

end



endmodule 