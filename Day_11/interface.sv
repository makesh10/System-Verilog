interface bus;
  logic [7:0] data;
  logic       valid;
  logic       ready;
endinterface

module _interface;
  bus busin();
  
  always_comb begin
    if (busin.valid)
      busin.ready = 1;
    else
      busin.ready = 0;
  end
  
  initial begin
    busin.valid = 1;
    busin.data  = 8'hAA;
  end 
  
endmodule
