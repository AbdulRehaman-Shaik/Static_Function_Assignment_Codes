//Exercise-22
//Can we do the object assignment with the three given objects.

class AB #(type T = int, int width = 8);
	T i;
	bit [width-1:0]b;
endclass

AB #(int,8)a_h1;
AB #(real,16)a_h2;
AB a_h3;
