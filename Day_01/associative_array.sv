module associative_array;
  int data[int];
  initial begin
    data[1]=10;
    data[2]=20;
    data[3]=30;
    $display("Associative Array Elements");
    foreach(data[i])
      $display("data[%0d]=%0d",i,data[i]);
    
    if(data.exists(4))
      $display("data 4 exists with value = %0d",data[4]);
    else
      $display("data 4 not found");
    
    data.delete(2);
    $display("\nAfter deleting data 2:");
    foreach(data[i])
      $display("data[%0d]=%0d",i,data[i]);
  end
endmodule


# Associative Array Elements
# data[1]=10
# data[2]=20
# data[3]=30
# data 4 not found
# 
# After deleting data 2:
# data[1]=10
# data[3]=30
# exit
