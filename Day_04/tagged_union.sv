module tagged_union;
  logic [31:0]x;
  
  typedef union tagged{
    int a;
    byte b;
    bit [15:0]c;
  }data;
  
  data D;
  
  initial begin
    D = tagged b (8'h11);
    D = tagged a (32'hffffffff);
    x=D.a;
    $display("x = %h",x);
    
  end
endmodule


# x = ffffffff
# exit
