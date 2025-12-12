module disable_fork;
  
  initial begin
    fork
      begin
        $display("Process A started at time = %0t",$time);
        #10;
        $display("Process A completed at time = %0t",$time);
      end
      begin
        $display("Process B started at time = %0t",$time);
        #15;
        $display("Process B completed at time = %0t",$time);
      end
      begin
        $display("Process C started at time = %0t",$time);
        #20;
        $display("Process C completed at time = %0t",$time);
      end
    join_any
    disable fork;
      $display("fork_join_any completed at time = %0t",$time);
  end
      
endmodule


# Process A started at time = 0
# Process B started at time = 0
# Process C started at time = 0
# Process A completed at time = 10
# fork_join_any completed at time = 10
# exit
