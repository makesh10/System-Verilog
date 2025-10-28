module unpacked_array_2D;
  reg[7:0]data[0:1][0:2];
  integer i,j;
  
  initial begin
    for(i=0;i<2;i=i+1)
    for(j=0;j<3;j=j+1)
    data[i][j]=i*2+j;
    
    $display("2D Unpacked Array");
    for(i=0;i<2;i=i+1)begin
      for(j=0;j<3;j=j+1)
    $write("%0d",data[i][j]);
    $write("\n");
    end
    
    // Access one specific element
    $display("\nAccessing one element:");
    $display("data[1][1]=%0d",data[1][1]);
    
  end
endmodule


# 2D Unpacked Array
# 012
# 234
# 
# Accessing one element:
# data[1][1]=3
# exit
