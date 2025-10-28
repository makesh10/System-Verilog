module unpacked_array_3D;
  reg[7:0]data[0:3][0:2][0:1];
  integer i,j,k;

  initial begin
    for (i=0;i<4;i=i+1)
      for (j=0;j<3;j=j+1)
        for (k=0;k<2;k=k+1)
          data[i][j][k]=i+j+k;

    $display("3D Unpacked Array Elements:");
    for (i=0;i<4;i=i+1)begin
      for (j=0;j<3;j=j+1) begin
        $write("data[%0d][%0d][%0d]=",i,j,k);
        for (k=0;k<2;k=k+1)
          $write("%0d ",data[i][j][k]);
        $write("\n");
      end
    end

    // Access one specific element
    $display("\nAccessing one element:");
    $display("data[3][2][1]=%0d",data[3][2][1]);
  end
endmodule


# 3D Unpacked Array Elements:
# data[0][0][2]=0 1 
# data[0][1][2]=1 2 
# data[0][2][2]=2 3 
# data[1][0][2]=1 2 
# data[1][1][2]=2 3 
# data[1][2][2]=3 4 
# data[2][0][2]=2 3 
# data[2][1][2]=3 4 
# data[2][2][2]=4 5 
# data[3][0][2]=3 4 
# data[3][1][2]=4 5 
# data[3][2][2]=5 6 
# 
# Accessing one element:
# data[3][2][1]=6
# exit
