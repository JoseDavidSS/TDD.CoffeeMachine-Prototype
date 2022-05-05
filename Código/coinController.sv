module coinController (input clk, rst, m100, m500, drink1, drink2, drink3, drink4, readyIn,
								output logic enable,
								output logic [7:0] vuelto, precioBebidaOut);
								
logic activarR, activarProceso, activarProcesoFinal;
logic [7:0] total, totalReg, vueltoRST, precioBebida, vueltoCrudo;

coinCounter contadorMonedas (clk, rst, m100, m500, total);

totalRegister registroTotal (clk, rst, total, totalReg, vueltoRST);

muxDrinks muxBebidas (clk, rst, drink1, drink2, drink3, drink4, activarR, precioBebida);

drinkRegister registroBebida (clk, rst, activarR, readyIn, precioBebida, activarProceso, precioBebidaOut);

coinsComparer comparadorPrecio (totalReg, precioBebidaOut, activarProceso, activarProcesoFinal, vueltoCrudo);

muxCoinOutput muxSalidas (clk, rst, vueltoRST, vueltoCrudo, activarProcesoFinal, enable, vuelto);

								

endmodule
								
					