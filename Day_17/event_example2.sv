module events;
  event e;
  
  task task_A();
    $display("@%0t: A : Before triggering event e",$time);
    ->e;
    $display("@%0t: A : After triggering event e",$time);
  endtask
  
  task task_B();
    $display("@%0t: B : waiting for the event e using @",$time);
    @e;
    $display("@%0t: B : event e is triggered using @",$time);
  endtask

  task task_C();
    $display("@%0t: C : waiting for the event e using wait",$time);
    wait(e.triggered);
    $display("@%0t: C : event e is triggered using wait",$time);
  endtask
  
  initial begin
    fork
      task_A();
      task_B();
      task_C();
    join
  end


# @0: A : Before triggering event e
# @0: A : After triggering event e
# @0: B : waiting for the event e using @
# @0: C : waiting for the event e using wait
# @0: C : event e is triggered using wait
# exit
  
endmodule
