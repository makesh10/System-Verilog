class packet;
  rand bit [3:0]x;
  rand bit [3:0]a;
  rand bit [3:0]b;
  
  constraint value_range{x inside {[a:b]};}
endclass

module inside_constraint;
   packet pkt;
   initial begin
     pkt = new();
       $display("--------------");
     repeat(4)begin
       pkt.randomize();
       $display("\ta = %0d, b = %0d",pkt.a,pkt.b);
       $display("\tx = %0d",pkt.x);
       $display("--------------");
     end
   end
endmodule


# --------------
# 	a = 0, b = 8
# 	x = 4
# --------------
# 	a = 0, b = 4
# 	x = 3
# --------------
# 	a = 4, b = 5
# 	x = 4
# --------------
# 	a = 3, b = 6
# 	x = 6
# --------------
# exit
