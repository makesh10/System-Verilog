class transaction;
  event m;
  
  function new(event n);
    m=n;
  endfunction
  
  task task_A();
    #10;
    ->m;
    $display("@%0t: task_A: Event m is Triggered!",$time);
  endtask

  task task_B();
    $display("@%0t: task_B: Waiting for the Event m",$time);
    wait(m.triggered);
    $display("@%0t: task_B: Event m is Received!",$time);
  endtask
  
endclass

module event_class();
  transaction tr;
  event et;
  
  initial begin
    tr = new(et);
    fork
      tr.task_A();
      tr.task_B();
    join
  end
  
endmodule


# @0: task_B: Waiting for the Event m
# @10: task_A: Event m is Triggered!
# @10: task_B: Event m is Received!
# exit
