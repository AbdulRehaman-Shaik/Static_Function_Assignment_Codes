//Exercise-8

class base;
	int i;	//dynamic

	function static get();	//static properties of method are allowed
		int a;		//dynamic
		a++;
		i++;		//dynamic	
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
warning - illegal static lifetime specified for class method 

error - Null object access
please make sure that the object is allocated before using it

*/
