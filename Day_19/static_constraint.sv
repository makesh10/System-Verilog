class packet;
  rand bit [7:0]addr,data;
  static constraint range {addr==5;data==10;}
endclass

module static_constraint;
  initial begin
    packet pt1;
    packet pt2;
    pt1=new();
    pt2=new();
    
    $display("Before disabling constraint");    
    pt1.randomize();
    $display("pt1.addr = %0d, pt1.data = %0d",pt1.addr,pt1.data);
    pt2.randomize();
    $display("pt2.addr = %0d, pt2.data = %0d",pt2.addr,pt2.data);  
    
    pt1.range.constraint_mode(0);
    $display("After disabling constraint of pt1");
    pt1.randomize();
    $display("pt1.addr = %0d, pt1.data = %0d",pt1.addr,pt1.data);
    pt2.randomize();
    $display("pt2.addr = %0d, pt2.data = %0d",pt2.addr,pt2.data);
  end
endmodule


# Before disabling constraint
# pt1.addr = 5, pt1.data = 10
# pt2.addr = 5, pt2.data = 10
# After disabling constraint of pt1
# pt1.addr = 221, pt1.data = 33
# pt2.addr = 23, pt2.data = 31
# exit
