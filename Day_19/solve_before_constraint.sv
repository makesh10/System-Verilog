//with solve before
class packet;
  rand bit x;
  rand bit [3:0]y;
  constraint solver{solve x before y;}
  constraint condition{(x==1)->(y==0);}
endclass

module top;
  initial begin
    packet pt;
    pt=new();
    repeat(10)begin
      pt.randomize();
      $display("\tx = %0d, y = %0d",pt.x,pt.y);
    end
  end
endmodule

# 	x = 1, y = 0
# 	x = 1, y = 0
# 	x = 0, y = 13
# 	x = 1, y = 0
# 	x = 0, y = 1
# 	x = 0, y = 4
# 	x = 1, y = 0
# 	x = 1, y = 0
# 	x = 0, y = 4
# 	x = 0, y = 3
# exit


//without solve before
class packet;
  rand bit x;
  rand bit [3:0]y;
  constraint condition{(x==1)->(y==0);}
endclass

module top;
  initial begin
    packet pt;
    pt=new();
    repeat(10)begin
      pt.randomize();
      $display("\tx = %0d, y = %0d",pt.x,pt.y);
    end
  end
endmodule

# 	x = 0, y = 3
# 	x = 0, y = 4
# 	x = 0, y = 6
# 	x = 0, y = 11
# 	x = 0, y = 2
# 	x = 0, y = 14
# 	x = 0, y = 8
# 	x = 0, y = 5
# 	x = 0, y = 1
# 	x = 0, y = 2
# exit
