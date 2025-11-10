module while_loop;
  int count = 0;
  
  initial begin
    while (count < 5) begin
      $display("count= %0d time= %0t",count,$time);
      count++;
      #10;
     
    end
  end
endmodule


# count= 0 time= 0
# count= 1 time= 10
# count= 2 time= 20
# count= 3 time= 30
# count= 4 time= 40
# exit
