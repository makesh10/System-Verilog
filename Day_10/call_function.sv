module call_function;
 
  function int square(input int a);
    return a*a;
  endfunction

  function int double_square(input int x);
    return 2*square(x);
  endfunction

  initial begin
    int result;
    result=double_square(4);
    $display("Double square of 4 = %0d",result);
  end

endmodule


# Double square of 4 = 32
# exit
