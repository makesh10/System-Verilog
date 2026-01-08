module semaphore;
  semaphore sema=new(3);
  
  task process();
    sema.get(3);
    $display("Process is Started");
    #5ns;
    $display("Process is Ended");
    sema.put(5);
  endtask

  initial begin
    process();
  end
  
endmodule


# Process is Started
# Process is Ended
# exit
