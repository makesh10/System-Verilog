module bitwise_operator;
  logic [3:0]a,b;
  
  initial begin
    a=4'b1011;b=4'b1100;
    $display("Result of a&b = %0b",a&b);
    $display("Result of &a = %0b",&a);
    $display("Result of a|b = %0b",a|b);
    $display("Result of |b = %0b",|b);
    $display("Result of ~|b = %0b",~|b);
    $display("Result of ~&a = %0b",~&a);
    $display("Result of a^b = %0b",a^b);
    $display("Result of ^b = %0b",^b);
    $display("Result of ~^b = %0b",~^b);

  end
endmodule


# Result of a&b = 1000
# Result of &a = 0
# Result of a|b = 1111
# Result of |b = 1
# Result of ~|b = 0
# Result of ~&a = 1
# Result of a^b = 111
# Result of ^b = 0
# Result of ~^b = 1
# exit
