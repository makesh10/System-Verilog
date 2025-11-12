module concatenation_operator;
  logic [3:0]a,b;
  logic [7:0]y;
  string s,c,d,z;
  
  initial begin
    a=4'b1111;b=4'b0000;s="DANGER";
    y={a,b};
    $display("y= %0b",y);
    
    y={2{a}};
    $display("y= %0b",y);
    
    c=$sformatf("%b",a);
    d=$sformatf("%b",b);
    z={d," ",s," ",c};
    $display("z= %s",z);


  end
endmodule


# y= 11110000
# y= 11111111
# z= 0000 DANGER 1111
# exit
