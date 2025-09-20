//Q1.Sort the contents of a dynamic array which contains 10 elements in it. (Do it with & without array methods).

module question1();
	int da[];

	initial
		begin
			da = new[10];		//with method
			foreach(da[i])
				begin
					da[i] = i;
					$display("da[%0d] = %0d",i,da[i]);
				end
			da.reverse();
			$display("da = %p",da);
			
			da.sort();
			$display("da = %p",da);

			da.rsort();
			$display("da = %p",da);

			da.shuffle();
			$display("da = %p",da);	
		end
endmodule

/* OUTPUT
da[0] = 0
da[1] = 1
da[2] = 2
da[3] = 3
da[4] = 4
da[5] = 5
da[6] = 6
da[7] = 7
da[8] = 8
da[9] = 9
da = '{9, 8, 7, 6, 5, 4, 3, 2, 1, 0}
da = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
da = '{9, 8, 7, 6, 5, 4, 3, 2, 1, 0}
da = '{1, 3, 2, 0, 4, 9, 8, 5, 7, 6}
*/
	
module question1();
int da[];
int temp;

initial
	begin
		da = new[10];		//without method
		foreach(da[i])
		da[i] = {$random}%20;

			for(int i=0;i<10;i++)
				begin
					for(int j=i+1;j<10;j++)
						begin
							if(da[i]>da[j])
								begin
								temp = da[i];
								da[i] = da[j];
								da[j] = temp;
								$display(da);
								end
						end
				end
	end
endmodule 
/* OUTPUT
'{7, 17, 17, 8, 17, 17, 5, 2, 1, 9}
'{5, 17, 17, 8, 17, 17, 7, 2, 1, 9}
'{2, 17, 17, 8, 17, 17, 7, 5, 1, 9}
'{1, 17, 17, 8, 17, 17, 7, 5, 2, 9}
'{1, 8, 17, 17, 17, 17, 7, 5, 2, 9}
'{1, 7, 17, 17, 17, 17, 8, 5, 2, 9}
'{1, 5, 17, 17, 17, 17, 8, 7, 2, 9}
'{1, 2, 17, 17, 17, 17, 8, 7, 5, 9}
'{1, 2, 8, 17, 17, 17, 17, 7, 5, 9}
'{1, 2, 7, 17, 17, 17, 17, 8, 5, 9}
'{1, 2, 5, 17, 17, 17, 17, 8, 7, 9}
'{1, 2, 5, 8, 17, 17, 17, 17, 7, 9}
'{1, 2, 5, 7, 17, 17, 17, 17, 8, 9}
'{1, 2, 5, 7, 8, 17, 17, 17, 17, 9}
'{1, 2, 5, 7, 8, 9, 17, 17, 17, 17}
*/		
