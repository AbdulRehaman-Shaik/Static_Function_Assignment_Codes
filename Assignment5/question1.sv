//predict the output for the following exercises

//Exercise-1,2,3,4,5,6

module threads();
	
	initial
		begin
			fork
				for(int H1_pointer=0;H1_pointer<2;H1_pointer++)
					begin
						#1 $display($time,"first loop: value of H1 = %g",H1_pointer);
					end
				
				for(int D1_channel=2;D1_channel>0;D1_channel--)
					begin
						#1 $display($time,"second loop: value of D1 = %g",D1_channel);
					end
			//join
			//join_any
			join_none
			disable fork;
			
			$display("@%g outside of fork-join \n",$time);
			#3 $finish;
		end
endmodule

/*----------------------output for fork-join thread---------------------

		   1first loop: value of H1 = 0
                   1second loop: value of D1 = 2
                   2first loop: value of H1 = 1
                   2second loop: value of D1 = 1
@2 outside of fork-join 


-----------------------output for fork-join_any thread--------------------

                   1first loop: value of H1 = 0
                   1second loop: value of D1 = 2
                   2first loop: value of H1 = 1
@2 outside of fork-join_any 

                   2second loop: value of D1 = 1


--------------------output for fork-join_none thread--------------------

0 outside of fork-join_none 

                   1first loop: value of H1 = 0
                   1second loop: value of D1 = 2
                   2first loop: value of H1 = 1
                   2second loop: value of D1 = 1

--------------------output for disable fork-join thread------------------

		   1first loop: value of H1 = 0
                   1second loop: value of D1 = 2
                   2first loop: value of H1 = 1
                   2second loop: value of D1 = 1
@2 outside of fork-join 


-------------------output for disable fork-join_any thread----------------

 		   1first loop: value of H1 = 0
                   1second loop: value of D1 = 2
                   2first loop: value of H1 = 1
@2 outside of fork-join 


--------------------output for disable fork-join_none thread----------------

@0 outside of fork-join

*/
