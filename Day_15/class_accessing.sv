class parent;
  bit [31:0]data;
  int id;
  function void display();
    $display("Base: data = %0d and id = %0d",data,id);
  endfunction
endclass

class child extends parent;
  bit [31:0]data;
  int id;
  function void display();
    $display("Child: data = %0d and id = %0d",data,id);
  endfunction
endclass

module class_accessing;
  initial begin
    parent pt;
    child cd;
    pt=new();
    cd=new();
    pt.data=300;
    pt.id=3;
    cd.data=500;
    cd.id=5;
    pt.display();
    cd.display();
  end

# Base: data = 300 and id = 3
# Child: data = 500 and id = 5
# exit
endmodule
