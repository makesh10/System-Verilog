module call_task;

  task add(input int a,b,output int sum);
    sum=a+b;
  endtask

  task calculate;
    int x,y,result;
    x=10;y=10;
    add(x,y,result);        
    $display("Sum = %0d", result);
  endtask

  initial begin
    calculate;  
  end

endmodule


# Sum = 20
# exit
