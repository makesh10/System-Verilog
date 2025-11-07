package pkg_a;
int data=10;
function pkg_func();
  $display("pkg_a:Inside pkg_func, data = %0d",data);
endfunction
endpackage

package pkg_b;
int data=20;
function pkg_func();
  $display("pkg_b:Inside pkg_func, data = %0d",data);
endfunction
endpackage

import pkg_a::*;
import pkg_b::*;
module packages;
  initial begin
    pkg_a::pkg_func();
    pkg_b::pkg_func();
  end
endmodule


# pkg_a:Inside pkg_func, data = 10
# pkg_b:Inside pkg_func, data = 20
# exit
