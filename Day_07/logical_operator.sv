module logical_operator;
  int a,b;
  
  initial begin
    a=10;b=20;
    
    if (a>5 && b>5)
      $display("Both Conditions are True");
    
    if (a==10 || b==5)
      $display("One of the Conditions is True");
    
    if (a==b)
      $display("a&b are Equal");
    
    if (!(a==b))
      $display("a&b are not Equal");
    
  end
endmodule


# Both Conditions are True
# One of the Conditions is True
# a&b are not Equal
# exit
