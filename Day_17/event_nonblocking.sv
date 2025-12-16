module events;
  event e;
  
  task task_A();
    $display("@%0t: Before triggering event e",$time);
    ->>e; //non-blocking event
    $display("@%0t: After triggering event e",$time);
  endtask
  
  task task_B();
    $display("@%0t: waiting for the event e",$time);
    @(e.triggered);
    $display("@%0t: event e is triggered!",$time);
  endtask

  initial begin
    fork
      task_A();
      task_B();
    join
  end
  
endmodule


# @0: Before triggering event e
# @0: After triggering event e
# @0: waiting for the event e
# @0: event e is triggered!
# exit
