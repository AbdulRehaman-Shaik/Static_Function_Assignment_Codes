//Exercise-19

class AB;
	int i = 1;
endclass

AB a1;

module test();
	initial
		begin
			repeat(2)
			begin
				AB a2 = new();	//static memory
				a1 = new();	//dynamic memory
				a1.i++;
				a2.i++;
				$display("disp_1 -- a1.i = %0d, a2.i = %0d",a1.i,a2.i);
				a1.i++;
				a2.i++;
				$display("disp_1 -- a1.i = %0d, a2.i = %0d",a1.i,a2.i);
			end
		end
endmodule

/* output

disp_1 -- a1.i = 2, a2.i = 2
disp_1 -- a1.i = 3, a2.i = 3
disp_1 -- a1.i = 2, a2.i = 4
disp_1 -- a1.i = 3, a2.i = 5

*/
