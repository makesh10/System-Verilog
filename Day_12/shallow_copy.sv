class shallow_copy;
  int a,b;
  function void display(string s);
    $display("%s value of a=%0d value of b=%0d",s,a,b);
  endfunction
endclass

module shallow;
  shallow_copy p1,p2;
  initial begin
    p1=new();
    p1.a=10;
    p1.b=20;
    p1.display("p1");
    p2=new p1;
    p2.display("p2");
    p2.a=1;
    p2.b=2;
    p1.display("p1");
    p2.display("p2");
    p1.a=1;
    p1.b=2;
    p1.display("p1");
    p2.display("p2");
   
  end
endmodule


# p1 value of a=10 value of b=20
# p2 value of a=10 value of b=20
# p1 value of a=10 value of b=20
# p2 value of a=1 value of b=2
# p1 value of a=1 value of b=2
# p2 value of a=1 value of b=2
# exit
