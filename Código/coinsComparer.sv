module coinsComparer #(parameter N = 8) (input logic [N-1:0] total, drinkPrice,
													input logic enableIn,
													output logic enableOut,
													output logic [N-1:0] vuelto);
always_comb
	begin
	if (enableIn && (total >= drinkPrice))
		begin
		vuelto = total - drinkPrice;
		enableOut = 1'b1;
		end
	else
		begin
		enableOut = 1'b0;
		vuelto = total;
		end
	end
endmodule
