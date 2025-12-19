class packet;
  randc bit [3:0]x;
  constraint range;
endclass

constraint packet::range{x<5;}

module top;
  packet p;
  initial begin
    p=new();
    repeat(5)begin
    p.randomize();
      $display("Value x = %0d",p.x);
    end
  end
endmodule


# Value x = 0
# Value x = 3
# Value x = 4
# Value x = 2
# Value x = 1
# exit
