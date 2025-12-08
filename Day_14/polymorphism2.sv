class parent;
  bit [31:0]data;
  int id;
  
  virtual function void display();
     $display("Base: data = %0d, id = %0d",data,id);
  endfunction
endclass

class child_A extends parent;
  function void display();
    $display("Child_A: data = %0d, id = %0d",data,id);
  endfunction
endclass

class child_B extends parent;
  function void display();
    $display("Child_B: data = %0d, id = %0d",data,id);
  endfunction
endclass

class child_C extends parent;
  function void display();
    $display("Child_C: data = %0d, id = %0d",data,id);
  endfunction
endclass

module polymorphism;
  initial begin
    parent p1,p2,p3;
    child_A c1 = new();
    child_B c2 = new();
    child_C c3 = new();
    
    c1.data=100;
    c1.id=10;
    c2.data=200;
    c2.id=20;
    c3.data=300;
    c3.id=30;
     
    p1 = c1;
    p2 = c2;
    p3 = c3;
    
    p1.data = 500;
    p1.id   = 50;
    
    p1.display();
    p2.display();
    p3.display();
  end
endmodule


# Child_A: data = 500, id = 50
# Child_B: data = 200, id = 20
# Child_C: data = 300, id = 30
# exit
