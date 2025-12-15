module events;
  event e;
  
  task task_A();
    #10;
    $display("@%0t: Before triggering event e",$time);
    ->e;
    $display("@%0t: After triggering event e",$time);
  endtask
  
  task task_B();
    #15;
    $display("@%0t: waiting for the event e",$time);
    @e;
    $display("@%0t: event e is triggered!",$time);
  endtask

  initial begin
    fork
      task_A();
      task_B();
    join
  end
  
endmodule


# @10: Before triggering event e
# @10: After triggering event e
# @15: waiting for the event e
# exit
