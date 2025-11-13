module shift_operator;
  logic [3:0]x;
  logic signed [3:0]y;
  
  initial begin
    x=4'b1011;
    $display("Value of x: %b (%0d)",x,x);
    $display("Logical Leftshift: %b (%0d)",x<<1,x<<1);
    $display("Logical Rightshift: %b (%0d)",x>>1,x>>1);
    
    y=-3;
    $display("\nValue of y: %b (%0d)",y,y);
    $display("Arithmetic Leftshift: %b (%0d)",y<<<1,y<<<1);
    $display("Arithmetic Rightshift: %b (%0d)",y>>>1,y>>>1);
    
  end
endmodule


# run -all
# Value of x: 1011 (11)
# Logical Leftshift: 0110 (6)
# Logical Rightshift: 0101 (5)
# 
# Value of y: 1101 (-3)
# Arithmetic Leftshift: 1010 (-6)
# Arithmetic Rightshift: 1110 (-2)
# exit
