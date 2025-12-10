typedef class bus;
typedef class man;
  
class driver;
  bit [31:0]data;
  int id;
  bus b=new();    
  function void display();
    $display("Driver: data = %0d & id = %0d",data,id);
    $display("Bus: addr = %0d",b.addr);
    $display("Man: hero = %0d",b.m.hero);
  endfunction
endclass

class bus;
  bit [31:0]addr;
  man m=new();
endclass
  
  class man;
    bit [31:0]hero;
  endclass

module typedef_class;
  driver d;  
  initial begin
    d = new();
    d.data = 100;
    d.id = 15;
    d.b.addr = 200;
    d.b.m.hero = 80;
    d.display();
  end
endmodule

# Driver: data = 100 & id = 15
# Bus: addr = 200
# Man: hero = 80
# exit
