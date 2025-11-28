class deep_copy;
  bit [31:0]data;
  int error;  
  function new(bit [31:0]data,int error);
    this.data = data;
    this.error = error;
  endfunction
endclass

class deep;
  bit [31:0]addr;
  int id;
  deep_copy dc;  
  function new();
    addr = 100;
    id = 10;
    dc = new(500,50);
  endfunction
  
  function void display();
    $display("DEEP: addr = %0d, id = %0d",addr,id);
    $display("DEEP_COPY: data = %0d, error = %0d\n",dc.data,dc.error);
  endfunction
  
  function deep copy();
   deep temp = new();
    temp.addr = this.addr;
    temp.id   = this.id;
    temp.dc = new(this.dc.data, this.dc.error);
    return temp;
  endfunction
endclass

module top_module;
  deep d1,d2;
  
  initial begin
    d1 = new();
    $display("Calling D1");
    d1.display();
    
    d2 = new();
    d2=d1.copy();
    $display("After deep copy D1 --> D2");
    $display("Calling D2");
    d2.display();
    $display("--------------------------------");
    
    d1.addr = 20;
    d1.id = 2;
    d1.dc.data = 50;
    d1.dc.error = 5;
    
    d2.addr = 30;
    d2.id = 3;
   
    $display("Calling D1");
    d1.display();
    $display("Calling D2");
    d2.display();
    
  end
endmodule


# Calling D1
# DEEP: addr = 100, id = 10
# DEEP_COPY: data = 500, error = 50
# 
# After deep copy D1 --> D2
# Calling D2
# DEEP: addr = 100, id = 10
# DEEP_COPY: data = 500, error = 50
# 
# --------------------------------
# Calling D1
# DEEP: addr = 20, id = 2
# DEEP_COPY: data = 50, error = 5
# 
# Calling D2
# DEEP: addr = 30, id = 3
# DEEP_COPY: data = 500, error = 50
# 
# exit
