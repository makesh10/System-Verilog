class packet;
  bit [31:0]addr;
  bit [31:0]data;
  bit write;
  string pkt_type;
       
    function new();
      addr=32'h10;
      data=32'hFF;
      write=1;
      pkt_type="GOOD_PKT";
    endfunction
       
    function void display();
      $display("\t addr = %0h",addr);
      $display("\t data = %0h",data);
      $display("\t write = %0d",write);
      $display("\t pkt_type = %0s",pkt_type);
    endfunction
endclass
       
module class_assignment;
  packet pkt_1;
  packet pkt_2;
  
initial begin
  pkt_1=new();
  $display("\t calling pkt_1 display");
  pkt_1.display();
  pkt_2=pkt_1;
  $display("\t calling pkt_2 display");
  pkt_2.display();
  pkt_2.addr=37'hAB;
  pkt_2.pkt_type="BAD_PKT";
  $display("\t calling pkt_1 display");
  pkt_1.display();
end
endmodule


# 	 calling pkt_1 display
# 	 addr = 10
# 	 data = ff
# 	 write = 1
# 	 pkt_type = GOOD_PKT
# 	 calling pkt_2 display
# 	 addr = 10
# 	 data = ff
# 	 write = 1
# 	 pkt_type = GOOD_PKT
# 	 calling pkt_1 display
# 	 addr = ab
# 	 data = ff
# 	 write = 1
# 	 pkt_type = BAD_PKT
# exit
