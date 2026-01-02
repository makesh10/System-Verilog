class soft_constraint;
  rand bit [3:0]value;
  constraint range{soft value>10;} 
endclass

module top;
  soft_constraint sc;
  initial begin
    sc=new();
    repeat(5)begin
      sc.randomize() with {value<10;};
      $display("Value = %0d",sc.value);
    end
  end
endmodule


# Value = 2
# Value = 5
# Value = 7
# Value = 4
# Value = 1
# exit
