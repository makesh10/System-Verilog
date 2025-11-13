module relational_operator;
  int a=10;
  int b=20;
  logic [3:0]x,y;
  
  initial begin
    $display("a=%0d b=%0d",a,b);
    
    $display("\na<b =%0d",(a<b));
    $display("a>b =%0d",(a>b));
    $display("a<=b =%0d",(a<=b));
    $display("a>=b =%0d",(a>=b));
    
    a=-1;b=-2;
    $display("\na<b =%0d",(a<b));
    $display("a>b =%0d",(a>b));
    
    x=4'b11x1;y=4'b11x1;
    $display("\nx==y =%0d",(x==y));
    $display("x!=y =%0d",(x!=y));
    $display("x===y =%0d",(x===y));
    $display("x!==y =%0d",(x!==y));

  end
endmodule


# run -all
# a=10 b=20
# 
# a<b =1
# a>b =0
# a<=b =1
# a>=b =0
# 
# a<b =0
# a>b =1
# 
# x==y =x
# x!=y =x
# x===y =1
# x!==y =0
# exit
