//Exercise-4

class parent;
	rand bit [2:0]a;
	constraint a_size{a<3;}	//this constraint will be not considered,due to override takes place for parent class
endclass

class child1 extends parent;
	rand bit [2:0]a;
	constraint a_size{a<5;}	//constraint identifiers are same,so overriding takes place
endclass			//both the constraints need to be statisfied for child class

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

ch1_h: '{a:'h1, a:'h1}
ch1_h: '{a:'h3, a:'h4}
ch1_h: '{a:'h2, a:'h1}
ch1_h: '{a:'h7, a:'h3}
ch1_h: '{a:'h0, a:'h3}
ch1_h: '{a:'h3, a:'h4}
ch1_h: '{a:'h2, a:'h2}

*/
