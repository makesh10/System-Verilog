class packet;
  int data;
  int id;
  extern function void set(int d,int i);
    extern function void display();
      endclass
      
      function void packet::set(int d,int i);
         data = d;
         id   = i;
      endfunction
      function void packet::display();
        $display("Data = %0d, ID = %0d",data,id);
      endfunction
      
module extern_arguments;
  initial begin
    packet p = new();
    p.set(100,200);
    p.display();
  end
endmodule

# Data = 100, ID = 200
# exit

      
class packet;
  int data;
  int id;
  extern function void set(int d,int i);
    extern function void display();
      endclass
      
      function void packet::set(int dat,int in); //Arguments name mismatch
         data = dat;
         id   = in;
      endfunction
      function void packet::display();
        $display("Data = %0d, ID = %0d",data,id);
      endfunction
      
module extern_arguments;
  initial begin
    packet p = new();
    p.set(100,200);
    p.display();
  end
endmodule


** Error: design.sv(10): Name of argument 'dat' for extern method 'set' does not match prototype.
** Error: design.sv(10): Name of argument 'in' for extern method 'set' does not match prototype.
