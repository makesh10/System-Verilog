module priority_if;
  int a=10,b=5;
  
  initial begin
    priority if (a>b)
      $display("a is Greater than b");
    else if (a>=b)
      $display("a is Greater than or Equal to b");
    else
      $display("Both are False");
    
  end
endmodule


# a is Greater than b
# exit
