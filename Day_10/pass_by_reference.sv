module pass_by_reference;
  int a,b,y;
  
  function automatic int sum(ref int a,b);
    a=5;b=5;
    return a+b;
  endfunction
  
  initial begin
    y = sum(a,b);
    $display("Out = %0d,a=%0d b=%0d",y,a, b);
  end
endmodule


# Out = 10,a=5 b=5
# exit
