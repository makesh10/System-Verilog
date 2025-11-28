class shallow_copy;
	int data;
  function new (int data);
		this.data = data;
	endfunction
endclass

class shallow;
	int addr;
	int id;
	shallow_copy slwcp;
	
  function new (int addr,int id,int data);
    slwcp = new(data);
		this.addr = addr;
		this.id = id;
	endfunction
	
	function void display (string name);
      $display("[%s] Addr=0x%0h ID=0x%0h Data=%0d",name,addr,id,slwcp.data);
	endfunction
endclass

module top;
	shallow s1,s2;
	initial begin
      s1 = new(32'hface_cafe, 32'h1234_5678,10);
      s1.display ("s1");
		s2 = new s1;
      s2.display ("s2");
		s1.addr = 32'habcd_abcd;
		s1.id = 32'h1a1a_2b2b;
		s1.slwcp.data = 20;
      s1.display ("s1");
      s2.display ("s2");
	end
endmodule


# [s1] Addr=0xfacecafe ID=0x12345678 Data=10
# [s2] Addr=0xfacecafe ID=0x12345678 Data=10
# [s1] Addr=0xabcdabcd ID=0x1a1a2b2b Data=20
# [s2] Addr=0xfacecafe ID=0x12345678 Data=20
# exit
