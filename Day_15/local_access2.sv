class transaction;
  bit [31:0]data;
  int id;
  function new();
    data = 100;
    id = 1;
  endfunction 
  local function void display();
    $display("data = %0d and id = %0d",data,id);
  endfunction
endclass

module local_access;
  transaction tr;
  initial begin
    tr = new();
    tr.display(); //Accessing local method outside class is not allowed
  end
endmodule

** Error (suppressible): (vlog-8688) design.sv(21): Illegal access to local member display.
        Full name of member: design_sv_unit::transaction::display
        Full name of calling scope: outside a class context

          
class transaction;
  bit [31:0]data;
  int id;
  function new();
    data = 100;
    id = 1;
    display(); //Accessing local method inside class is allowed
  endfunction
  local function void display();
    $display("data = %0d and id = %0d",data,id);
  endfunction
endclass

module local_access;
  transaction tr;
  initial begin
    tr = new();
  end
endmodule

# data = 100 and id = 1
# exit
