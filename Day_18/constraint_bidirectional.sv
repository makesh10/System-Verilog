class bidirectional;
  rand bit [7:0]a;
  rand bit [7:0]b;
  rand bit [7:0]c;
  
  constraint parent{c==a+b;}
  constraint child{a<50;}
  constraint child1{b==100;}
endclass

module bidirectional_constraint;
  bidirectional bd;
  
 initial begin
   bd=new();
   repeat(3)begin
   bd.randomize();
   $display("A=%0d, B=%0d, C=%0d",bd.a,bd.b,bd.c);
   end
 end
endmodule


# A=12, B=100, C=112
# A=48, B=100, C=148
# A=28, B=100, C=128
# exit
