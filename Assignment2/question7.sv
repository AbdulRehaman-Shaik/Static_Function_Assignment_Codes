//Q7. Predict the output of the below code. Will there be any difference in the output if dummy_task is defined as Automatic task?

module test();

	task dummy_task(input int x, string str);
		fork
			begin
				#x;
			end

			begin
				#10;
			end

		join_any

		disable fork;
		$display("%s is disabled at t = %t",str,$time);
	endtask

	initial
		fork
			begin 
				#2;
				dummy_task(5,"call_1");
			end

			begin
				#1;
				dummy_task(15,"call_2");
			end
		join
endmodule

//output without using automatic task i.e, memory is statically allocated

/*

call_1 is disabled at t = 7
call_1 is disabled at t = 11

*/

//output by using automatic task i.e, memory is dynamically allocated

/*

call_1 is disabled at t = 7
call_2 is disabled at t = 11

*/



