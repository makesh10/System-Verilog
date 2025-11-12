module conditional_operator;
  int a,b,y;
  string c,d,z;
  logic enable;
  
  initial begin
    a=10;b=20;
    enable=1;
    y=(enable)?a:b;
    $display("Enable: %0d, y= %0d",enable,y);
    
    enable=0;
    y=(enable)?a:b;
    $display("Enable: %0d, y= %0d",enable,y);
    
    c="MAKESH";d="NIVEDHA";
    enable=1;
    z=(enable)?c:d;
    $display("Enable: %0d, y= %s",enable,z);
    
    enable=0;
    z=(enable)?c:d;
    $display("Enable: %0d, y= %s",enable,z);
    
  end
endmodule


# Enable: 1, y= 10
# Enable: 0, y= 20
# Enable: 1, y= MAKESH
# Enable: 0, y= NIVEDHA
# exit
    
