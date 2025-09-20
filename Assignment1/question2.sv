//Q2.write a code to insert one queue in another queue by using methods & without using methods

//By using methods

 module question2();
   int q1[$] = '{1,2,3,8,9,10};
   int q2[$] = '{4,5,6,7};
   
   int k; //to store the values of q1 (or) q2

	initial
		begin
			for(int i=0; i<4; i++)
				begin
					k = q2.pop_front();
					q1.insert(3+i,k);
				//	$display("q1 = %p",q1);      // value by value like pop_front it will display each element of changing of q1
                                                                    
				end
			$display("q1 = %p",q1);               // at a time it will  display all the elements after pop_front operation
		end
endmodule    
/* OUTPUT
q1 = '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10} */

//Without using methods

/* module question2();
   int q1[$] = '{1,2,3,8,9,10};
   int q2[$] = '{4,5,6,7};

   initial
	begin
		q1 = {q1[0:2],q2,q1[3:$]};
		$display("q1 = %p",q1);
	end
endmodule              */

//Another Method without using for loop

/* module question2();
   int q1[$] = '{1,2,3,8,9,10};
   int q2[$] = '{4,5,6,7};

	initial
		begin
			repeat(4)
			q1.insert(3,q2.pop_back());
			$display("q1 = %p",q1);
		end
endmodule     */

