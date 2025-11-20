task sub(input int a,b,output int result);
    result=a-b;
  endtask

module global_task;
  int a,b,result;
  
  initial begin
    a=10;
    b=5;
    sub(a,b,result);
    $display("Result=%0d",result);
  end
endmodule

# Result=5
# exit
