module packed_array_2D;
  reg[1:0][7:0]data;
  
  initial begin
    data=16'b10101010_10101010;
    
    $display("2D Packed Array:");
    $display("data=%0b",data);
    
    $display("Row 0 (first 8 bits) = %0b",data[0]);
    $display("Row 1 (second 8 bits) = %0b",data[1]);
    
  end
endmodule


# 2D Packed Array:
# data=1010101010101010
# Row 0 (first 8 bits) = 10101010
# Row 1 (second 8 bits) = 10101010
# exit
