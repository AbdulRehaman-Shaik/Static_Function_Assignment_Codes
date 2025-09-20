//Exercise-20 (Multi-level inheritance)

//After passing three conditions in oops rule,then o/p will execute

class AB;
	int i;
//	pure virtual function void disp();	//error
endclass

class BC extends AB;
	int j;
	function void disp(int z);
		j = z;
		$display("%0d",j);
	endfunction
endclass

class CD extends AB;
	int k;
	function void disp(int z);
		k = z;
		$display("%0d",k);
	endfunction
endclass

AB a_h = new();
BC b_h = new();
CD c_h = new();

module test();
	initial
		begin
		//	a_h.disp();
			b_h.disp(2);
			c_h.disp(3);
		end
endmodule

/* output

error - pure virtual method not allowed

A pure virtual method cannot be defined in a non-abstract class 'AB'.

2
3

*/
