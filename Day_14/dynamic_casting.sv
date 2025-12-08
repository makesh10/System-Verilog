class parent;
  bit [31:0]data;
  int id;
  function void display();
    $display("Base: data = %0d, id = %0d",data,id);
  endfunction
endclass

class child extends parent;
  function void display();
    $display("Child: data = %0d, id = %0d",data,id);
  endfunction
endclass

module dynamic_casting;
  initial begin
    parent p;
    child c;
    c = new();
    $cast(p,c);
    $cast(c,p);
    p.data = 10;
    p.id   = 1;
    c.data = 5;
    c.id   = 2;
    c.display();
  end
endmodule


# Child: data = 5, id = 2
# exit
