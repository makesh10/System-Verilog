module unique_if;
  int a,b;
  
  initial begin
    a=20;
    b=30;
    
    unique if (a<b)
      $display("b is Greater than a");
    else if (a==b)
      $display("a is Less than or Equal to b");
    else
      $display("Both are False");
    
  end
endmodule


# b is Greater than a
# exit
