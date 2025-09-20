//Exercise-14

class trans;
	int i;

	function new();	//constructor
		i = 10;
	endfunction
endclass : trans

	class ex_trans1 extends trans;
		int i;

		function new();		//constructor
			i = 20;
		endfunction
	endclass : ex_trans1

	ex_trans1 e_h;

	module test();
		initial
			begin
				e_h = new();
				$display("%p",e_h);
			end
	endmodule

/* output

	'{i:10, i:20}

*/
