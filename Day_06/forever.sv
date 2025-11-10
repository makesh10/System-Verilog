module forever_loop;
  int count = 0;
  
  initial begin
    forever begin
      #10;
      count++;
      $display("Count: %0d, time: %0t",count,$time);
      if (count==10)
        $finish;

    end
  end
endmodule


# Count: 1, time: 10
# Count: 2, time: 20
# Count: 3, time: 30
# Count: 4, time: 40
# Count: 5, time: 50
# Count: 6, time: 60
# Count: 7, time: 70
# Count: 8, time: 80
# Count: 9, time: 90
# Count: 10, time: 100
