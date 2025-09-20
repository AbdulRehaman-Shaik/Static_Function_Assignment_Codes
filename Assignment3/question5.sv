//Exercise-5

class base;
	int i;	//dynamic

	static function get();
		int a;		//dynamic
		a++;
		i++;		//error non-static member access
		$display(a);
		$display(i);	//error non-static memmber access
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

	error - illegal access of non-static member 'i' from static method 'base :: get'.
* /

