class parent;
  randc bit [4:0]a;
  constraint range{a<10;}
endclass

class child extends parent;
  constraint range{a>20;}
endclass

module inheritance;
  parent p;
  child c;
  initial begin
    p=new();
    c=new();
    repeat(5)begin
      p.randomize();
      $display("Value of A = %0d",p.a);
    end
    $display("-------------------");
    repeat(5)begin
      c.randomize();
      $display("Value of A = %0d",c.a);
    end
  end
endmodule


# Value of A = 9
# Value of A = 3
# Value of A = 7
# Value of A = 1
# Value of A = 6
# -------------------
# Value of A = 26
# Value of A = 30
# Value of A = 22
# Value of A = 24
# Value of A = 27
# exit
