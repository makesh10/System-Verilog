class routine;
  int addr;
  int data;
  
  function new(int a,d);
    addr=a;
    data=d;
    $display("Addr = %0d, Data = %0d",addr,data);
  endfunction
 
  task display();
    $display("ROUTINE: Addr = %0d, Data = %0d",addr,data);
  endtask
endclass

module top;
  routine r1, r2;
  initial begin
    r1 = new(10,20);
    r1.display();
    r1.addr = 100;
    r2 = r1;
    r1.display();
    r2.display();

  end
endmodule


# Addr = 10, Data = 20
# ROUTINE: Addr = 10, Data = 20
# ROUTINE: Addr = 100, Data = 20
# ROUTINE: Addr = 100, Data = 20
# exit
