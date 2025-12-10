class parent;
  bit [31:0]data=100;
  int id=1;
  function void display();
    $display("Base: data = %0d and id = %0d",data,id);
  endfunction
endclass

class child extends parent;
  bit [31:0]data=200;
  int id=2;
  function void display();
    $display("Child: data = %0d and id = %0d",data,id);
  endfunction
endclass

module class_overiding;
  initial begin
   child cd;
   cd=new();
   cd.display();
  end
endmodule

# Child: data = 200 and id = 2
# exit
