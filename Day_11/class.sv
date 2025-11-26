class Packet;
  int addr;
  int data;

  function new(int a,b);
    addr=a;
    data=b;
  endfunction

  function void display;
    $display("Addr = %0d, Data = %0d",addr,data);
  endfunction
endclass

module classz;
  Packet pkt;

  initial begin
    pkt=new(100,500);
    pkt.display;        
  end

endmodule


# Addr = 100, Data = 500
# exit
