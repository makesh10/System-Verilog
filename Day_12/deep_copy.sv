class packet;
  int a,b;
  function packet copy();
    packet p = new();
    p.a = this.a;
    p.b = this.b;
    return p;
  endfunction
endclass

module top;
  initial begin
    packet p1,p2;
    p1 = new();
    p1.a = 10;
    p1.b = 20;
    $display("[p1] a=%0d b=%0d", p1.a, p1.b);

    p2 = p1.copy();
    p2.a = 100;
    $display("[p1] a=%0d b=%0d", p1.a, p1.b);
    $display("[p2] a=%0d b=%0d", p2.a, p2.b);
  end
endmodule


# [p1] a=10 b=20
# [p1] a=10 b=20
# [p2] a=100 b=20
# exit
