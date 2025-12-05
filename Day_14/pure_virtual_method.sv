virtual class parent;
  bit [31:0]data;
  
  pure virtual function void display();
endclass

class child extends parent;
  function void display();
    $display("Child: Value of data = %0d",data);
  endfunction  
endclass

module top;
  initial begin
    parent pt;
    child cd;
    cd = new();
    pt = cd;
    pt.data = 100;
    pt.display();
  end
endmodule


# Child: Value of data = 100
# exit
