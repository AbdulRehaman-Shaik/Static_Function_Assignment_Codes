//Q4.Define a dynamic array of size 10, and generate elements like da = '{1,1,2,2,3,3,4,4,5,5}

module question4();
  int da[];
	
	initial
		begin
			da = new[10];
			foreach(da[i])
				begin
					da[i] = (i+2)/2;
					$display("da[%0d] = %0d",i,da[i]);
				end
		end
endmodule 
