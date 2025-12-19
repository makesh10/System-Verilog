class packet;
  rand bit [3:0]x;
  rand bit [3:0]a;
  rand bit [3:0]b;
  
  constraint value_range1{a<b;}
  constraint value_range{!(x inside {[a:b]});}
endclass

module notinside_constraint;
   packet p;
   initial begin
     p = new();
       $display("--------------");
     repeat(4)begin
       p.randomize();
       $display("\ta = %0d, b = %0d",p.a,p.b);
       $display("\tx = %0d",p.x);
       $display("--------------");
     end
   end
endmodule


# --------------
# 	a = 0, b = 1
# 	x = 3
# --------------
# 	a = 6, b = 8
# 	x = 2
# --------------
# 	a = 9, b = 10
# 	x = 8
# --------------
# 	a = 8, b = 9
# 	x = 6
# --------------
# exit
