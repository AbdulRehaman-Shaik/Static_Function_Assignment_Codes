//Exercise-6

class base;
	static int i;	//static

	static function get();
		int a;		//dynamic
		a++;
		i++;		//static	
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

/* output

	1
	1
	1
	2
	1
	3	*/
