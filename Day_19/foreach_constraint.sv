class packet;
  rand byte addr[];
  rand byte data[];
  
  constraint size{addr.size==2;data.size==addr.size;}
  constraint a_range{foreach (addr[i]) addr[i] inside {2,4,6,8,10};}
  constraint d_range{foreach (data[i]) data[i]>2*i;}
  
endclass

module iteration;
  packet pkt;

  initial begin
    pkt=new();
    repeat(2)begin
    pkt.randomize();
      foreach(pkt.addr[i]) 
        $display("\taddr = %0d \tdata = %0d",pkt.addr[i],pkt.data[i]);
    end
  end
endmodule


# 	addr = 4 	data = 125
# 	addr = 6 	data = 72
# 	addr = 4 	data = 55
# 	addr = 4 	data = 66
# exit
