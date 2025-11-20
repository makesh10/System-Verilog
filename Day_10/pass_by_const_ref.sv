module pass_by_const_ref;
  int a,b;
  int out;
  
  function automatic int division(const ref int a,b);
    return a/b;
  endfunction

  initial begin
    a=10;
    b=2;
    out = division(a,b);
    $display("Out = %0d a=%0d b=%0d",out,a,b);
  end
endmodule


# Out = 5 a=10 b=2
# exit
