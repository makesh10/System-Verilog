class inline_constraint;
  rand bit [3:0]data;
  constraint range{data inside {[5:10]};};
endclass

module top;
  initial begin
    inline_constraint ic;
    ic=new();
    repeat(4)begin
      ic.randomize() with {data == 8;};
      $display("Data = %0d",ic.data);
    end
  end
endmodule


# Data = 8
# Data = 8
# Data = 8
# Data = 8
# exit
