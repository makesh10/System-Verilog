class randomization;
  rand byte addr,data;
endclass

module random_method;
  initial begin
    randomization rd;
    rd=new();
    
    $display("After disabling randomization of all variable");
    rd.rand_mode(0);    
    rd.randomize();
    $display("\taddr = %0d \tdata = %0d",rd.addr,rd.data);
    
    $display("After enabling randomization of all variable");
    rd.rand_mode(1);
    rd.randomize();
    $display("\taddr = %0d \tdata = %0d",rd.addr,rd.data);
    
    $display("Disabling randomization of one variable");
    rd.addr.rand_mode(0);
    rd.randomize();
    $display("\taddr = %0d \tdata = %0d",rd.addr,rd.data);
    //addr remains previous value

    $display("\n\taddr.rand_mode() = %0d \tdata.rand_mode() = %0d",rd.addr.rand_mode(),rd.data.rand_mode());

  end
endmodule


# After disabling randomization of all variable
# 	addr = 0 	data = 0
# After enabling randomization of all variable
# 	addr = -35 	data = 33
# Disabling randomization of one variable
# 	addr = -35 	data = -67
# 
# 	addr.rand_mode() = 0 	data.rand_mode() = 1
# exit
