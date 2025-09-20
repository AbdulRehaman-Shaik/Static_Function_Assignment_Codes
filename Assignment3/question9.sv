//Exercise-9

class base;
	int i;	//dynamic

	function static get();	//static properties of method are allowed
		int a;	//dynamic
		a++;
		$display(a);
	endfunction
endclass

base b1_h,b2_h;

module test();
	initial
		begin
			b1_h = new();
			b2_h = new();
			b1_h.get();
			b1_h.get();
			b2_h.get();
		end
endmodule

/* output

after compilation
warning : illegal static lifetime specified for class method

	1
	2
	3 

*/
