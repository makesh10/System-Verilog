module semaphore;
  semaphore sem=new(1);
  
  task process_X();
    if(sem.try_get()) 
      $display("process_X: Key received");
    else 
      $display("process_X: Key not available");
    $display("process_X started");
    #4ns;
    $display("%0t: process_X completed",$time);
    sem.put();
  endtask
  
  task process_Y();
    if(sem.try_get()) 
      $display("process_Y: Key received");
    else 
      $display("process_Y: Key not available");
    $display("process_Y started");
    #5ns;
    $display("%0t: process_Y completed",$time);
    sem.put();
  endtask

  initial begin
    fork
      process_X();
      process_Y();
    join
  end
  
endmodule


# process_X: Key received
# process_X started
# process_Y: Key not available
# process_Y started
# 4: process_X completed
# 5: process_Y completed
# exit
