module unique_if2;
  int a,b;
  
  initial begin
    a=20;
    b=30;
    
    unique if (a<b)
      $display("b is Greater than a");
    else if (a<=b)
      $display("a is Less than or Equal to b");
    else
      $display("Both are False");
    
  end
endmodule

//More than one condition are true, so warning shows
# b is Greater than a
# ** Warning: (vsim-8360) The if/case statement is not unique.
#    Time: 0 ns  Iteration: 0  Process: /unique_if2/#implicit#unique__9 File: design.sv Line: 9
# exit
