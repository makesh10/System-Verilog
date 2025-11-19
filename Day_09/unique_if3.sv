module unique_if3;
  int a,b;
  
  initial begin
    a=20;
    b=30;
    
    unique if (a>b)
      $display("b is Greater than a");
    else if (a==b)
      $display("a is Less than or Equal to b");
    
  end
endmodule

// No Condition are true so warning shows
# ** Warning: (vsim-8315) No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Process: /unique_if3/#implicit#unique__9 File: design.sv Line: 9
# exit
