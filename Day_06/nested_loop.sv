module nested_loop;
  int i,j,k;
  
  initial begin
    outer:for(i=0;i<3;i++)begin
      mid:for(j=0;j<2;j++)begin
        inner:for(k=0;k<2;k++)begin
          if(i==1 && j==1 && k==1)
            disable outer;
          $display("i=%0d, j=%0d, k=%0d",i,j,k);
        end
      end
    end
  end
endmodule


# run -all
# i=0, j=0, k=0
# i=0, j=0, k=1
# i=0, j=1, k=0
# i=0, j=1, k=1
# i=1, j=0, k=0
# i=1, j=0, k=1
# i=1, j=1, k=0
# exit
