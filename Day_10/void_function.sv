class Class;
  int count;

  function void in_count();
    count++;
  endfunction

endclass

module void_function;
  Class object=new();
  
  initial begin
    object.in_count();
    $display("Count = %0d",object.count);
    object.in_count();
    $display("Count = %0d",object.count);
  end
  
endmodule


# Count = 1
# Count = 2
# exit
