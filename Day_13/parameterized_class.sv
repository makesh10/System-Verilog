class packet #(parameter type n = int,parameter WIDTH = 8);
  n id;
  bit [WIDTH-1:0]data;

  function new(n id,bit [WIDTH-1:0]data);
    this.id = id;
    this.data = data;
  endfunction

  function void display();
    $display("ID = %0p, Data[%0d] = %0h",id,WIDTH,data);
  endfunction
endclass

module top;
  initial begin
    packet p1 = new(100,8'hAA);
    packet #(byte) p2 = new(8'd20,8'hBB);
    packet #(string) p3 = new("NIVEDHA",8'hCC);
    
    packet #(int,16) s1 = new(200,16'hABCD);
    packet #(int,32) s2 = new(300,32'hAABBCCDD);
    
    p1.display();
    p2.display();
    p3.display();
    s1.display();
    s2.display();
    
  end
endmodule


# ID = 100, Data[8] = aa
# ID = 20, Data[8] = bb
# ID = "NIVEDHA", Data[8] = cc
# ID = 200, Data[16] = abcd
# ID = 300, Data[32] = aabbccdd
# exit
