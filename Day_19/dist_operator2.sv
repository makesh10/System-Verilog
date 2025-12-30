class distribution;
  rand byte data;
  constraint random{data dist {5:/3,[8:10]:/3};}
endclass

module random;
  distribution dn;
  initial begin
    dn=new();
    repeat(8)begin
    dn.randomize();
      $display("Data = %0d",dn.data);
    end
  end
endmodule


# Data = 5
# Data = 8
# Data = 9
# Data = 10
# Data = 5
# Data = 8
# Data = 5
# Data = 8
# exit
