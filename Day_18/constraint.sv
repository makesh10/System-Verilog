class packet;
  rand bit [3:0]x;
  randc bit [3:0]y;  
  constraint range{x>5;y>10;}
endclass

module top;
  packet p;
  initial begin
    p=new();
    repeat(5)begin
    p.randomize();
      $display("\tValue x = %0d, \tValue y = %0d",p.x,p.y);
    end
  end
endmodule


# 	Value x = 7, 	Value y = 14
# 	Value x = 12, Value y = 15
# 	Value x = 12, Value y = 11
# 	Value x = 6, 	Value y = 12
# 	Value x = 11, Value y = 13
# exit
