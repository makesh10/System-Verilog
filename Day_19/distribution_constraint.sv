class distribution;
  rand bit [3:0]value1,value2;
  constraint value1_c{value1 dist {3:/2,[6:8]:/5};}
  constraint value2_c{value2 dist {3:=2,[6:8]:=5};}
endclass

module dist_constraint;
  distribution d;
  initial begin
    d=new();
    repeat(7)begin
      d.randomize();
      $display("value1(:/) = %0d, value2(:=) = %0d",d.value1,d.value2);
    end
  end
endmodule


# value1(:/) = 3, value2(:=) = 8
# value1(:/) = 6, value2(:=) = 8
# value1(:/) = 3, value2(:=) = 3
# value1(:/) = 8, value2(:=) = 8
# value1(:/) = 8, value2(:=) = 6
# value1(:/) = 7, value2(:=) = 7
# value1(:/) = 7, value2(:=) = 6
# exit
