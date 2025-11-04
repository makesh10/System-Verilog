module unpacked_union;
  logic [31:0] x;
  
  typedef union{
    int a;
    byte b;
    bit [15:0]c;
  } data;
  
  data d1;
  
  initial begin
    d1.a=32'hffffffff;
    x=d1.b;
    $display("x=%h",x);
    
    d1.b=8'h10;
    x=d1.a;
    $display("x=%h",x);

    d1.c=16'haaaa;
    x=d1.a;
    $display("x=%h",x);
    
  end
endmodule


# x=ffffffff
# x=ffffff10
# x=ffffaaaa
# exit
