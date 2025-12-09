class parent;
  bit [31:0]data;
  int id;
  function new();
    data = 100;
    id = 2;
  endfunction
  protected function void display();
    $display("data = %0d & id = %0d",data,id);
  endfunction
endclass

class child extends parent;
  bit [31:0]addr;
  task sum;
    addr=data*id;
    display();  // Accessing protected method of parent class through child class is allowed
    $display("addr = %0d",addr);
  endtask
endclass

module protected_access;
  child cd;  
  initial begin
    cd = new();
    cd.sum();
  end
endmodule

# data = 100 & id = 2
# addr = 200
# exit


class transaction;
  bit [31:0]data;
  int id;
  function new();
    data = 100;
    id = 1;
  endfunction
  protected function void display();
    $display("data = %0d & id = %0d",data,id);
  endfunction
endclass

module protected_access;
  transaction tr;
  initial begin
    tr = new();
    tr.display(); // Accessing protected method outside class is not alllowed
  end
endmodule

** Error (suppressible): (vlog-8688) design.sv(18): Illegal access to protected member display.
        Full name of member: design_sv_unit::transaction::display
        Full name of calling scope: outside a class context          
