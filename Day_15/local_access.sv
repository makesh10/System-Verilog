class transaction;
  bit [31:0]data;
  local int id;

  function void display();
    $display("data = %0d and id = %0d",data,id);
  endfunction
endclass

module local_access;
  transaction tr;
  
  initial begin
    tr = new();
    tr.data = 100;
    tr.id = 1; //Accessing local variable outside class is not allowed
    tr.display();
  end
endmodule

** Error (suppressible): (vlog-8688) design.sv(17): Illegal access to local member id.
        Full name of member: design_sv_unit::transaction::id
        Full name of calling scope: outside a class context

          
class transaction;
  bit [31:0]data;
  local int id;
  function new(); //Accessing local variable inside class is allowed
    data = 100; 
    id = 1;
  endfunction  
  function void display();
    $display("data = %0d and id = %0d",data,id);
  endfunction
endclass

module local_access;
  transaction tr;
  initial begin
    tr = new();
    tr.display();
  end
endmodule

# data = 100 and id = 1
# exit
