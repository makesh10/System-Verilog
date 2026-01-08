module semaphore;
  semaphore sr=new(3);
  
  task Task_1();
    sr.get(3);
    $display("%0t: Task_1 is Started",$time);
    #5ns;
    $display("%0t: Task_1 is Completed",$time);
    sr.put(5);
  endtask

  task Task_2();
    sr.get(5);
    $display("%0t: Task_2 is Started",$time);
    #5ns;
    $display("%0t: Task_2 is Completed",$time);
    sr.put(5);
  endtask
  
  task Task_3();
    sr.get(6);
    $display("%0t: Task_3 is Started",$time);
    #5ns;
    $display("%0t: Task_3 is Completed",$time);
    sr.put(6);
  endtask
  
  initial begin
    fork
      Task_1();
      Task_2();
      Task_3();
    join
  end
  
endmodule


# 0: Task_1 is Started
# 5: Task_1 is Completed
# 5: Task_2 is Started
# 10: Task_2 is Completed
# exit
