module events;
  event e1,e2,e3;
  
  task task_A();
    #10;
    ->e1;
    $display("@%0t: A : Event e1 is Triggered!",$time);
  endtask
  
  task task_B();
    #20;
    ->e2;
    $display("@%0t: B : Event e2 is Triggered!",$time);
  endtask

  task task_C();
    #30;
    ->e3;
    $display("@%0t: C : Event e3 is Triggered!",$time);
  endtask
  
  task wait_process();
    wait_order(e1,e3,e2)
    $display("Events are Triggered in Order");
    else
      $display("Events are Triggered in Out of Order");
  endtask
  
  initial begin
    fork
      task_A();
      task_B();
      task_C();
      wait_process();
    join
  end
  
endmodule


# @10: A : Event e1 is Triggered!
# @20: B : Event e2 is Triggered!
# Events are Triggered in Out of Order
# @30: C : Event e3 is Triggered!
# exit
