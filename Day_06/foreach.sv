module foreach_loop;
  int i,j,k;
  int matrix[1][2][3];
  
  initial begin
    foreach(matrix[i,j,k])begin
    matrix[i][j][k]=(i+1)*(j+1)*(k+1);
    $display("matrix[%0d][%0d][%0d]=%0d",i,j,k,matrix[i][j][k]);
    end
  end
endmodule


# matrix[0][0][0]=1
# matrix[0][0][1]=2
# matrix[0][0][2]=3
# matrix[0][1][0]=2
# matrix[0][1][1]=4
# matrix[0][1][2]=6
# exit
