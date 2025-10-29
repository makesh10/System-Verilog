module mixed_array;
  reg[7:0]data[0:2][0:1];
  integer i,j;
  
  initial begin
    foreach (data[i,j])
      data[i][j]=(i*10)+j;
    
    $display("Mixed Array Elements:");
    foreach (data[i,j])
      $display("data[%0d][%0d]=%0d (binary=%08b)",i,j,data[i][j],data[i][j]);
    
    //Accessing one element
    $display("\nAccessing one element:");
    $display("data[2][1]=%0d (binary=%08b)",data[2][1],data[2][1]);
  end
endmodule


# Mixed Array Elements:
# data[0][0]=0 (binary=00000000)
# data[0][1]=1 (binary=00000001)
# data[1][0]=10 (binary=00001010)
# data[1][1]=11 (binary=00001011)
# data[2][0]=20 (binary=00010100)
# data[2][1]=21 (binary=00010101)
# 
# Accessing one element:
# data[2][1]=21 (binary=00010101)
# exit
