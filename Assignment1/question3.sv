//Q3.Predict the o/p of below code

module question5();
   int i_num1;
   int i_num2;
	
	initial
		begin
			i_num1 = int'(10.0 - 1.0);
			$display("the integer and value is : %d",i_num1);  //9
			i_num2 = int'(5/3);
			$display("the integer and value is : %d",i_num2);  //1
		end

endmodule
