class packet;
  rand bit [7:0]addr;
  randc bit [7:0]data;
  
  function void pre_randomize();
  $display ("pre_randomize");
  endfunction

  function void post_randomize();
  $display("post_randomize");
  $display("Addr = %0d, Data %0d",addr,data);
  endfunction
endclass

module random;
  initial begin
    packet pkt;
    pkt = new;
    pkt.randomize();
  end
endmodule


# pre_randomize
# post_randomize
# Addr = 57, Data 148
# exit
