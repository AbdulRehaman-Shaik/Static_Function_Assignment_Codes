//Exercise-7

class base;
	static int i;	//static

	function static get();	//dynamic properties of  class are allowed 
		int a;		//static
		a++;
		i++;		//static property of class,(so error)	
		$display(a);
		$display(i);
	endfunction
endclass

base b1_h,b2_h;

module test();
	initial
		begin
			b1_h.get();	//error
			b1_h.get();
			b2_h.get();
		end
endmodule

/* output 

after compilation
warning : illegal static lifetime specified for class method

error - Null object accesss
please make sure that the object is allocated before using it

*/
