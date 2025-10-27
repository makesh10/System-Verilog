module packed_array;
  reg[7:0]data;
  
  initial begin
    data=8'b10101010;
    $display("data=%0b",data);
    
    //bit slicing
    $display("data[6]=%0b",data[6]);
    $display("data[3:0]=%0b",data[3:0]);
    $display("data[7]=%0b",data[7]);
    
  end
endmodule


# data=10101010
# data[6]=0
# data[3:0]=1010
# data[7]=1
# exit
