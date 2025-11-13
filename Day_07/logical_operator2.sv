module sv_logical_operator;
  logic[3:0] x,y;
  int z;
  
  initial begin
    x=4'd1;
    y=4'd1;
    z=(x->y);
    $display("z= %0d",z);
    
    z=(x<->y);
    $display("z= %0d",z);
    
    x=4'd1;
    y=4'd0;
    z=(x->y);
    $display("z= %0d",z);
    
    z=(x<->y);
    $display("z= %0d",z);

  end
endmodule


# z= 1
# z= 1
# z= 0
# z= 0
# exit

    
