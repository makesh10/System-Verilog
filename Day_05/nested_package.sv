package pkg_A;
int data=5;
int id_A=1;
function pkg_func(); 
  $display("pkg_A: Inside pkg func, data = %0d,id_A = %0d",data,id_A); 
endfunction 
endpackage

package pkg_B;
import pkg_A::*;
int data=10;
int id_B=2;
function pkg_func(); 
  $display("pkg_B: Inside pkg func, data = %0d,id_B = %0d",data,id_B); 
endfunction
endpackage

package pkg_C;
import pkg_B::*;
int data=15;
int id_C=3;
function pkg_func(); 
  $display("pkg_C: Inside pkg func, data = %0d,id_C= %0d",data,id_C); 
endfunction
endpackage

import pkg_C::*;
module package_example;
initial begin
  pkg_A::pkg_func();
  pkg_B::pkg_func();
  pkg_C::pkg_func();

end
endmodule


# pkg_A: Inside pkg func, data = 5,id_A = 1
# pkg_B: Inside pkg func, data = 10,id_B = 2
# pkg_C: Inside pkg func, data = 15,id_C= 3
# exit
