//Q6. Predict the output for the following

class pass_by_ref;

	int refr = 2;
	int val = 2;
	
	function automatic int check_refer (ref int r);
		$display("\n----------------PASS BY REFERENCE----------------\n");
		$display("Initial Value of REFR = %d",r);
		r++;
		$display("Value of REFR after incrementing %d",r);
	endfunction

	function int check_val(int v);
		$display("\n---------------PASS BY VALUE-------------------\n");
		$display("Initial Value of VAL = %d",v);
		v++;
		$display("Value of VAL after incrementing %d",v);
	endfunction

endclass

pass_by_ref h1;

module test;
	
	initial
		begin
			h1 = new();
			h1.check_refer(h1.refr);
			h1.check_val(h1.val);
			$display("\n-----------------IN MEMORY----------------------\n");
			$display("Value of REFR after incrementing %d",h1.refr);
			$display("Value of VAL after incrementing %d",h1.val);
		end

endmodule

//output

/*

----------------PASS BY REFERENCE----------------

Initial Value of REFR =           2
Value of REFR after incrementing           3

---------------PASS BY VALUE-------------------

Initial Value of VAL =           2
Value of VAL after incrementing           3

-----------------IN MEMORY----------------------

Value of REFR after incrementing           3 (This function is used automatic,so it used dynamic memory allocation & global variable is override takes place)
Value of VAL after incrementing           2  (This function type is integer type function, so change takes place in global variables)

*/
