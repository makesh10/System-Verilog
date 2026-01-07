module semaphore_code;
  semaphore s=new(3);
  
  task task_A();
    s.get(3);
    $display("Task_A Started");
    #5ns;
    $display("Task_A Completed");
    s.put(1);
  endtask
  
  task task_B();
    s.get(1);
    $display("Task_B Started");
    #4ns;
    $display("Task_B Completed");
    s.put(1);
  endtask

  initial begin
    fork
      task_A();
      task_B();
    join
  end
  
endmodule


# Task_A Started
# Task_A Completed
# Task_B Started
# Task_B Completed
# exit
