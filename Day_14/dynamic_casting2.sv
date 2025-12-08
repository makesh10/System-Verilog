class parent;
  bit[31:0]addr;
  function display();
    $display("value of addr=%0d",addr);
  endfunction
endclass

class child extends parent;
  bit[31:0]data;
  function display();
    super.display();
    $display("value of data=%0d",data);
  endfunction
endclass

module dynamic_cast;
  initial begin
    parent p;
    child c1,c2;
    c1=new();
    c1.data=10;
    c1.addr=20;
    $cast(p,c1);
    $cast(c2,p);
    c2.display();
  end 
endmodule


# value of addr=20
# value of data=10
# exit
