class parent;
  int x;
  function void display();
    $display("Inside Base Class Parent: x = %0d",x);
  endfunction
endclass


class child extends parent;   
  int y;
  function void show();
    $display("Inside Derived Class Child: y = %0d",y);
  endfunction
endclass


module top;
  initial begin
    child cd = new();

    cd.x = 100; 
    cd.y = 200;     

    cd.display();  
    cd.show();     
  end
endmodule


# Inside Base Class Parent: x = 100
# Inside Derived Class Child: y = 200
# exit
