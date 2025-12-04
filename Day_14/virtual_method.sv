class parent;
  bit [31:0]data;
  int id;
  
  virtual function void display(bit [31:0] data,int id);
     $display("Base: Value of data = %0h and id = %0h",data,id);
  endfunction
endclass

class child extends parent;
  function void display(bit [31:0]data,int id);
    $display("Child: Value of data = %0h and id = %0h",data,id);
  endfunction  
endclass

module top;
  initial begin
    parent pt;
    child cd;
    cd = new();
    
    pt = cd;
    pt.data = 5;
    pt.id = 1;
    pt.display(pt.data,pt.id);
    cd.display(cd.data,cd.id);

  end
endmodule


# Child: Value of data = 5 and id = 1
# Child: Value of data = 5 and id = 1
# exit
