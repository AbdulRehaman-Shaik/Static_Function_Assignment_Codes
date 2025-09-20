//Predict the outputs for the following Exercises

//Exercise-1

class parent;
	rand bit [2:0]a;
	constraint a_size{a==3;}
endclass

class child1 extends parent;
	rand bit [2:0]a;
	constraint a_size{a==2;}	//constraint identifiers are same
	constraint c_size{super.a==a;}
endclass

parent p1_h;
child1 ch1_h;

module parent_child_same_prop;

	initial
		begin
			ch1_h = new();

			for(int i=0;i<7;i++)
				begin
					assert(ch1_h.randomize());
					$display("ch1_h: %p",ch1_h);
				end
		end
endmodule


/* output

ch1_h: '{a:'h2, a:'h2}
ch1_h: '{a:'h2, a:'h2}
ch1_h: '{a:'h2, a:'h2}
ch1_h: '{a:'h2, a:'h2}
ch1_h: '{a:'h2, a:'h2}
ch1_h: '{a:'h2, a:'h2}
ch1_h: '{a:'h2, a:'h2}

*/
