//Q1.Predict the output for the following exercises

//Exercise-1

class base;
	static int i;	//static

	static function static get();
		int a;	//static
		a++;
		i++;
		$display(a);
		$display(i);
	endfunction
endclass

base b1_h,b2_h;

module test();
	initial
		begin
			b1_h.get();
			b1_h.get();
			b2_h.get();
		end
endmodule

/*output

	1
	1
	2
	2
	3
	3	*/

