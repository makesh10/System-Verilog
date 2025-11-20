module task_call_function;
  int tf;
  
  function int square(input int a);
    return a*a;
  endfunction
  
  task squares(input int x,output int result);
    result=square(x);
    #5;
    $display("Square of %0d = %0d",x,result);
  endtask
  
  initial begin
    squares(5,tf);
    squares(10,tf);
  end
endmodule


# Square of 5 = 25
# Square of 10 = 100
# exit
