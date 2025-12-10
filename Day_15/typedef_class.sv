typedef class bus;
class driver;
  bit [31:0]data;
  int id;
  bus b=new();    
  function void display();
    $display("Driver: data = %0d & id = %0d",data,id);
    $display("Bus: addr = %0d",b.addr);
  endfunction
endclass

class bus;
  bit [31:0]addr;
endclass

module typedef_class;
  driver d;  
  initial begin
    d = new();
    d.data = 100;
    d.b.addr = 200;
    d.id = 15;
    d.display();
  end
endmodule

# Driver: data = 100 & id = 15
# Bus: addr = 200
# exit
