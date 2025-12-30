class packet;
  randc bit [2:0]start_addr;
  randc bit [2:0]end_addr;
  
  constraint range{start_addr == fun(end_addr);}
  
  function bit [2:0] fun(bit [2:0] ed_addr);
    if(ed_addr<4) 
      fun=0;
    else 
      fun=ed_addr-4;
  endfunction
  
endclass

module func_contraint;
  initial begin
    packet pkt;
    pkt=new();
    repeat(4)begin
      pkt.randomize();
      $display("\tstart_addr = %0d \tend_addr =",pkt.start_addr,pkt.end_addr);
    end
  end
endmodule


# 	start_addr = 2 	end_addr =6
# 	start_addr = 1 	end_addr =5
# 	start_addr = 0 	end_addr =1
# 	start_addr = 0 	end_addr =2
# exit
