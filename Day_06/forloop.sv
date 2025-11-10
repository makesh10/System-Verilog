module forloop;
  int i;
  int j;
  int mem[3:0];
  
  initial begin
    outerloop: for(j=0;j<2;j++)
    begin
      #10;
      innerloop: for(i=0;i<3;i++)
      begin
        mem[i]=i+1;
        $display($stime,,"mem[%0d]=%0d",i,mem[i]);
      end
    end
  end
endmodule


#         10 mem[0]=1
#         10 mem[1]=2
#         10 mem[2]=3
#         20 mem[0]=1
#         20 mem[1]=2
#         20 mem[2]=3
# exit
