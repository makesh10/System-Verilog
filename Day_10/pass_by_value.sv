module pass_by_value;
  int a,b,out;
  
  function int multiply(int a,b);
    return a*b;
  endfunction
  
  initial begin
    a=5;
    b=6;
    out = multiply(a,b);
    $display("Out = %0d for a=%0d b=%0d",out,a,b);
  end
endmodule


# Out = 30 for a=5 b=6
# exit
