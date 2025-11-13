module replication_operator;
  logic [7:0]data;
  logic enb;
  
  initial begin
    data={2{4'b1010}};
    $display("Data: %0b",data);
    
    enb=1'b1;
    data={8{enb}};
    $display("Data: %0b",data);
    
    data={{4{enb}},4'b0000};
    $display("Data: %0b",data);
    
  end
endmodule


# Data: 10101010
# Data: 11111111
# Data: 11110000
# exit
