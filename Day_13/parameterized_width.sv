class packet #(parameter WIDTH=8);
  bit [WIDTH-1:0]data;

  function new(bit [WIDTH-1:0]d);
    data=d;
  endfunction

  function void display();
    $display("Packet [%0d] = %0h",WIDTH,data);
  endfunction
endclass


module top;
  initial begin
    packet #(8)   p1  = new(8'hA5);
    packet #(16)  p2  = new(16'h1234);

    p1.display();
    p2.display();
  end
endmodule


# Packet [8] = a5
# Packet [16] = 1234
# exit
