//Exercise-21

class AB;

	rand int i;
	task xyz(string s);
		fork
			begin
				#(i); 	// #5,#30 will start from '0'ns simulation time
			end
	
			begin
				#(20);	// #20 also start from '0'ns simulation time
				$display("in object of %s, 20ns delay is completed",s);
			end
		join_any

		disable fork;
 	endtask
endclass

AB a1 = new();
AB a2 = new();

module test();
	initial
		begin
			a1.i = 5;
			a2.i = 30;
				fork
					a1.xyz("a1");	
					a2.xyz("a2");	//a1 is override by a2,since a1 is started at #5 delay 
				join
		end
endmodule

/* output

	in object of a2, 20ns delay is completed

*/
