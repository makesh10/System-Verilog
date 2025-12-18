class random;
  rand bit [3:0]addr;
  rand bit [3:0]data;
endclass
            
module randomization;
  random rd;
  initial begin
    rd = new();
    repeat(10)begin
      rd.randomize();
      $display("\taddr = %0d \tdata = %0d",rd.addr,rd.data);
    end
  end
endmodule


# 	addr = 14  data = 4
# 	addr = 5 	 data = 2
# 	addr = 1 	 data = 10
# 	addr = 7 	 data = 6
# 	addr = 5 	 data = 13
# 	addr = 8 	 data = 9
# 	addr = 12  data = 0
# 	addr = 10  data = 13
# 	addr = 5 	 data = 13
# 	addr = 3 	 data = 0
# exit
