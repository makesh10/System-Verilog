module unpacked_array;
  reg[7:0]data[0:3];
  integer i;
  
  initial begin
    data[0]=8'b10101010;
    data[1]=8'b11001100;
    data[2]=8'b11110000;
    data[3]=8'b11100010;
    
   $display("Unpacked Array Elements");
    foreach(data[i])
      $display("data[%0d]=%0b",i,data[i]);
    
    //Access one element
    $display("\n Accessing one element");
    $display("data[2]=%0b",data[2]);
    
  end
endmodule


# Unpacked Array Elements
# data[0]=10101010
# data[1]=11001100
# data[2]=11110000
# data[3]=11100010
# 
#  Accessing one element
# data[2]=11110000
# exit
