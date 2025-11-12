module wildcard_operator;
  logic[3:0]a,b,c,d;
  
  initial begin
    a=4'b1011;b=4'b1?xz;
    if (a==?b)
    $display("Both are Matched");
    else
      $display("Both are not Matched");
    
    a=4'b1?xz;b=4'b1011;
    if (a==?b)
    $display("Both are Matched");
    else
      $display("Both are not Matched");
    
    c=4'b1010;d=4'b11x1;
    if (c!=?d)
      $display("Pattern not Matched");
    else
      $display("Patter Matched");
    
    c=4'b11x1;d=4'b1010;
    if (c!=?d)
      $display("Pattern not Matched");
    else
      $display("Patter Matched");
      
  end
endmodule


# Both are Matched
# Both are not Matched
# Pattern not Matched
# Pattern not Matched
# exit
