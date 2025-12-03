class packet #(parameter type t=int);
  t data;

  function new(t d);
    data=d;
  endfunction

  function void display();
    $display("Data = %0p",data);
  endfunction
endclass


module top;
  packet p1,p2,p3;
  initial begin
    packet p1 = new(100);
    packet #(byte) p2 = new(50);
    packet #(string) p3 = new("MAKESH");

    p1.display();
    p2.display();
    p3.display();
  end
endmodule


# Data = 100
# Data = 50
# Data = "MAKESH"
# exit
