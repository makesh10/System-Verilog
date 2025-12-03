class parent;
  int a;

  function new();
    a = 10;
    $display("Parent Constructor");
  endfunction

  function void show();
    $display("Parent: a = %0d",a);
  endfunction
endclass


class child extends parent;
  int b;

  function new();
    super.new();
    b = 20;
    $display("Child Constructor");
  endfunction

  function void show();
    super.show();
    $display("Child: b = %0d",b);
  endfunction
endclass


module top;
  initial begin
    child cd;
    cd=new();
    cd.show();
  end
endmodule


# Parent Constructor
# Child Constructor
# Parent: a = 10
# Child: b = 20
# exit
