class conditional;
  rand bit [7:0]x;
  rand enum {RED,GREEN}state;

  constraint condition{x==((state==RED)?0:1);}
endclass

module top;
  conditional cd;
  
  initial begin
    cd=new();
    repeat(5)begin
      cd.randomize();
      $display("state = %s, x = %0d",cd.state,cd.x);
    end
  end
endmodule


# state = GREEN, x = 1
# state = RED, x = 0
# state = GREEN, x = 1
# state = GREEN, x = 1
# state = RED, x = 0
# exit
