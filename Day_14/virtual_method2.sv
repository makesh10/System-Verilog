class base;
  virtual task run();
    $display("Base: Execute run task");
  endtask
endclass

class child extends base;
  task run();
    $display("Child: Override run task");
  endtask
endclass

module top;
  initial begin
    base b;
    child c;
    
    c = new();
    b = c;
    b.run();
    c.run();
  end
endmodule


# Child: Override run task
# Child: Override run task
# exit
