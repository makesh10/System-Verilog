class distribution;
  rand bit [3:0]data;
  constraint random{data dist {5:=2,10:=4,7:=2};}
endclass

module random;
  distribution dn;
  initial begin
    dn=new();
    repeat(10)begin
    dn.randomize();
      $display("Data = %0d",dn.data);
    end
  end
endmodule


# Data = 10
# Data = 10
# Data = 10
# Data = 7
# Data = 10
# Data = 5
# Data = 5
# Data = 10
# Data = 10
# Data = 5
# exit
