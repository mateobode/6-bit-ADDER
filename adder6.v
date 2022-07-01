module adder1(
	output sum,
	output c_out,
	input a,
	input b,
	input c_in);
	
	assign {c_out, sum} = a + b + c_in;

endmodule

module adder6(
	output [6:0] sum,
	input [5:0] a, b);

	
	adder1 FA1(sum[0], c_in1, a[0], b[0], 'b0);
	adder1 FA2(sum[1], c_in2, a[1], b[1], c_in1);
	adder1 FA3(sum[2], c_in3, a[2], b[2], c_in2);
	adder1 FA4(sum[3], c_in4, a[3], b[3], c_in3);
	adder1 FA5(sum[4], c_in5, a[4], b[4], c_in4);
	adder1 FA6(sum[5], sum[6], a[5], b[5], c_in5);
	
endmodule
