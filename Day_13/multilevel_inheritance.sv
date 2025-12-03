class parent;
  bit [31:0]data_p;
  function void display_p();
    $display("parent: Value of data = %0d",data_p);
  endfunction
endclass

class child_1 extends parent;
  bit [31:0]data_c1;
  function void display_c1();
    $display("child_1: Value of data = %0d",data_c1);
  endfunction
endclass

class child_2 extends child_1;
  bit [31:0]data_c2;
  function void display_c2();
    $display("child_2: Value of data = %0d",data_c2);
  endfunction
endclass

class child_3 extends child_2;
  bit [31:0]data_c3;
  function void display_c3();
    $display("child_3: Value of data = %0d",data_c3);
  endfunction
endclass

class child_4 extends child_3;
  bit [31:0]data_c4;
  function void display_c4();
    $display("child_4: Value of data = %0d",data_c4);
  endfunction
endclass


module multilevel_inheritance;
   initial begin
     child_4 c4;
     c4 = new();
     c4.data_p = 20;
     c4.data_c1 = 40;
     c4.data_c2 = 60;
     c4.data_c3 = 80;
     c4.data_c4 = 100;
     c4.display_p();
     c4.display_c1();
     c4.display_c2();
     c4.display_c3();
     c4.display_c4();
   end
endmodule


# parent: Value of data = 20
# child_1: Value of data = 40
# child_2: Value of data = 60
# child_3: Value of data = 80
# child_4: Value of data = 100
# exit
