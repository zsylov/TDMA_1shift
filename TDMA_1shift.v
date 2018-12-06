module TDMA_1shift(
						//input data_start,
						input[7:0] input_a,
						input [2:0]shift_width,
						output[7:0] shift_a
					);

		reg [2:0] count;
		assign shift_aR = input_a;
	always @ (*)
		if(data_start)
			begin
				count <= count + 1'b1;
				shift_a <= shift_aR << 1;
			end
		else if(count != shift_width)
				data_start = 1'b1;
			else
				data_start = 1'b0;
endmodule 
