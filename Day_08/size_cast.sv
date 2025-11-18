module size_casting;
  logic [3:0]x;
  logic [7:0]result;
  
  initial begin
    x=4'b1011;
    result=2'(x);
    $display("x= %b result= %b",x,result);
    
    result=8'(x);
    $display("x= %b result= %b",x,result);
    
  end 
endmodule


# x= 1011 result= 00000011
# x= 1011 result= 00001011
# exit
