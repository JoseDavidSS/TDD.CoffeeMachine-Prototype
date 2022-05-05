module coinCounter #(parameter N=8) (input logic clk, rst, m100, m500, 
											output reg [N-1:0] total);
											
logic prev_state;

always_ff @ (posedge clk or posedge rst)
	begin
	if (rst)
		begin
		total <= 8'b00;
		prev_state <= 1'b0;
		end
	else if ((m100==1'b1) && (prev_state == 0))
		begin
		total <= total + 1'b1;
		prev_state <= 1'b1;
		end
	else if ((m500==1'b1) && (prev_state == 0))
		begin
		total <= total + 3'b101;
		prev_state <= 1'b1;
		end
	else if ((m100==1'b0) && (m500==1'b0) && (prev_state == 1))
		begin
		prev_state <= 1'b0;
		end
	end
endmodule
