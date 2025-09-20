//Exercise-11

class trans;
	int i;

	function new(int i);	//constructor
		this.i = i;
	endfunction
endclass : trans

	class ex_trans1 extends trans;
		int i;

		function new(int i);	//constructor
			super.new(i);
			this.i = 20;
		endfunction
	endclass : ex_trans1

	ex_trans1 e_h;

	module test();
		initial
			begin
				e_h = new(10);
				$display("%p",e_h);
			end
	endmodule

/* output

	'{i:10, i:20}

*/
