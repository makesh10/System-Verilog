virtual class parent;
  bit [31:0]data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h",data,id);
  endfunction
endclass

class child extends parent;
  function void display();
    $display("Child: Value of data = %0h and id = %0h",data,id);
  endfunction  
endclass

module top;
  initial begin
    child cd;
    cd = new();
    
    cd.data = 5;
    cd.id = 1;
    cd.display();
  end
endmodule


# Child: Value of data = 5 and id = 1
# exit
