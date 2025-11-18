class myclass;
  rand bit [3:0]cvar,cvar1;
  
  constraint c_var {!(cvar inside {[3:7]});}
  constraint c_var1 {(cvar1 inside {[3:7]});}
endclass

module inside_operator;
  initial begin
    myclass mc=new();
    $display("Constraint cvar to be outside of range [3:7]");
    repeat(5)begin
      mc.randomize();
      $display("mc.cvar: %0d",mc.cvar);
    end
    
    $display("\nConstraint cvar1 to be inside of range [3:7]");
    repeat(5)begin
      mc.randomize();
      $display("mc.cvar1: %0d",mc.cvar1);
    end
  end
endmodule


# Constraint cvar to be outside of range [3:7]
# mc.cvar: 11
# mc.cvar: 8
# mc.cvar: 11
# mc.cvar: 10
# mc.cvar: 15
# 
# Constraint cvar1 to be inside of range [3:7]
# mc.cvar1: 6
# mc.cvar1: 7
# mc.cvar1: 4
# mc.cvar1: 6
# mc.cvar1: 6
# exit
