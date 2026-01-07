//With Semaphore
module semaphore_exp;
  semaphore sp=new(1);
  
  task write();
    sp.get();
    $display("Before Writing");
    #5ns
    $display("Write Completed");
    sp.put();
  endtask
  
  task read();
    sp.get();
    $display("Before Reading");
    #4ns
    $display("Read Completed");
    sp.put();
  endtask

  initial begin
    fork
      write();
      read();
    join
  end
  
endmodule

# Before Writing
# Write Completed
# Before Reading
# Read Completed
# exit


// Without Semaphore
module semaphore_exp;
  
  task write();
    $display("Before Writing");
    #5ns
    $display("Write Completed");
  endtask
  
  task read();
    $display("Before Reading");
    #4ns
    $display("Read Completed");
  endtask

  initial begin
    fork
      write();
      read();
    join
  end
  
endmodule

# Before Writing
# Before Reading
# Read Completed
# Write Completed
# exit
