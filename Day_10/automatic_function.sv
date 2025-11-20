module automatic_function;
  
  function automatic [31:0]add;
    int a;
    a++;
    return a;
  endfunction
  
  initial begin
    $display("Add= %0d",add);
    $display("Add= %0d",add);
    $display("Add= %0d",add);
    
  end
endmodule


# Add= 1
# Add= 1
# Add= 1
# exit
