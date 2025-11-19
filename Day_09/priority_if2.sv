module priority_if2;
  int x=20,y=50;
  
  initial begin
    priority if (x>y)
      $display("x is Greater than y");
    if (x>=y)
      $display("x is Greater than or Equal to y");
    
  end
endmodule

//No Conditions are True so Warning Shows
# ** Warning: (vsim-8315) No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Process: /priority_if2/#implicit#priority__6 File: design.sv Line: 6
# exit
