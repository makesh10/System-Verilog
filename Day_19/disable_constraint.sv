class randomization;
  rand bit [7:0]x;
  rand bit [7:0]y;
  constraint condition1{x inside {[10:20]};}
  constraint condition2{y inside {50,70,80};}
endclass

module disable_constraint;
  randomization rd;
  initial begin
    rd=new();
    
    $display("After disabling all constraints");
    rd.constraint_mode(0);
    rd.randomize();
    $display("\tX = %0d \tY = %0d",rd.x,rd.y);
    
    $display("After enabling all constraints");
    rd.constraint_mode(1);
    rd.randomize();
    $display("\tX = %0d \tY = %0d",rd.x,rd.y);
    
    $display("Disabling one constraint");
    rd.condition2.constraint_mode(0);
    rd.randomize();
    $display("\tX = %0d \tY = %0d",rd.x,rd.y);

    $display("\ncondition1.constraint_mode() = %0d, condition2.constraint_mode() = %0d",rd.condition1.constraint_mode(),rd.condition2.constraint_mode());
  end
endmodule


# After disabling all constraints
# 	X = 243 	Y = 156
# After enabling all constraints
# 	X = 17 	Y = 80
# Disabling one constraint
# 	X = 11 	Y = 133
# 
# condition1.constraint_mode() = 1, condition2.constraint_mode() = 0
# exit
