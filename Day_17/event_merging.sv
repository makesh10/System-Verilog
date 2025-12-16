module events;
  event e1,e2;
  
  task task_A();
    e2=e1;
    #10;
    ->e2;
    $display("@%0t: A : Event e2 is Triggered!",$time);
  endtask
  
  task task_B();
    $display("@%0t: B : Waiting for Event e1",$time);
    @(e1.triggered);
    $display("@%0t: B : Event e1 is Received!",$time);
  endtask

  initial begin
    fork
      task_A();
      task_B();
    join
  end
  
endmodule


# @0: B : Waiting for Event e1
# @10: A : Event e2 is Triggered!
# @10: B : Event e1 is Received!
# exit
