class parent;
  int data =10;
endclass

class child extends parent;
  int addr =20;
endclass

module dynamic_casting;
  parent p;
  child c;
  int cast;
  
  initial begin
    c=new();
    c.data=100;
    c.addr=200;
    
    p=c;
    $display("Parent.data= %0d",p.data);
    
    cast= $cast(c,p);
    
    if (cast)
      $display("child.addr= %0d",c.addr);
    else
      $display("Casting Failed");
  end
endmodule


# Parent.data= 100
# child.addr= 200
# exit
