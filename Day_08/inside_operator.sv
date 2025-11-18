module inside_operator;
  int a;
  
  initial begin
    a=6;
    if (a inside {[5:10]})
    $display("a=%0d is Inside the Range",a);
     else
       $display("a=%0d is not Inside the Range",a);
  end
endmodule


# a=6 is Inside the Range
# exit
