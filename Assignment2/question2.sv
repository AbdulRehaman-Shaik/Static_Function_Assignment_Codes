//Q2.Predict the output for the following

module test();

	int d,result;
	int a = 2, b = 3;

	function automatic mult (ref int a, ref int b, output int c);
		c = (a*b) + 2;
		a++;
		$display("--------------inside function-------------");
		$display("@time t = %0d: a = %0d and b = %0d and c = %0d",$time,a,b,c);
	endfunction

	initial
		fork
		begin
			#1;
			mult(a,b,d);
			$display("------------Begin block1------------");
			$display("@time t =%0d: a = %0d and b = %0d and d = %0d",$time,a,b,d);
		end

		begin 
			#2;
			mult(a,b,d);
			$display("------------Begin block2------------");
			$display("@time t =%0d: a = %0d and b = %0d and d = %0d",$time,a,b,d);
		end
		join
endmodule

//output

/*
--------------inside function-------------
@time t = 1: a = 3 and b = 3 and c = 8
------------Begin block1------------
@time t =1: a = 3 and b = 3 and d = 8
--------------inside function-------------
@time t = 2: a = 4 and b = 3 and c = 11
------------Begin block2------------
@time t =2: a = 4 and b = 3 and d = 11

*/	
