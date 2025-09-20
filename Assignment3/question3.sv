//Exercise-3

class base;
	int i; // dynamic

	static function static get(); 	
		static int a;	//inside method local properties are static
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
	2
	3	*/
