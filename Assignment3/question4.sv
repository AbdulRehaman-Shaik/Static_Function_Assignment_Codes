//Exercise-4

class base;
	int i;	//dynamic

	static function get();
		int a;		//local properties within a method are dynamic in nature
		a++;
		$display(a);
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
	1	*/
