module _task;
  int a,b,result;
  
  task mul(input int a,b,output int result);
    result=a*b;
  endtask
  
  initial begin
    a=2;
    b=5;
    mul(a,b,result);
    $display("Multiply =%0d",result);
  end
endmodule


# Multiply =10
# exit
