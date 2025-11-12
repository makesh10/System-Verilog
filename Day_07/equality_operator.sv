module equality_operator;
  logic [3:0]a,b,c;
  
  initial begin
    a=4'b1010;
    b=4'b1010;
    c=4'b1x10;
    $display("Value of a: %0b",a);
    $display("Value of b: %0b",b);
    $display("Value of c: %0b",c);
    
    if(a==b)
      $display("Logical Equality of a==b is %0d",a==b);
      $display("Logical Inequality of a!=b is %0d",a!=b);
    
    if(a!==c)
      $display("Case Inequality of a!==c is %0d",a!==c);
      $display("Case Equality of a===c is %0d",a===c);

  end
endmodule


# Value of a: 1010
# Value of b: 1010
# Value of c: 1x10
# Logical Equality of a==b is 1
# Logical Inequality of a!=b is 0
# Case Inequality of a!==c is 1
# Case Equality of a===c is 0
# exit
