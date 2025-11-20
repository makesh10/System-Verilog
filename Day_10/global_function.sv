function int add;
  int a;
  return ++a;
endfunction

module global_function;
  initial begin
    $display("%0d",add);
    $display("%0d",add);
    $display("%0d",add);
  end
endmodule


# 1
# 2
# 3
# exit
