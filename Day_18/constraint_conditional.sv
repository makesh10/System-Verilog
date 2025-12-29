class conditional_constraint;
  rand bit [7:0]data;
  rand enum {LOW,HIGH}scale;

  constraint condition{if(scale==LOW) 
                         data<50;
                        else 
                         data>50;
                        }
endclass

module top;
  conditional_constraint cc;
  
  initial begin
    cc=new();
    repeat(5)begin
      cc.randomize();
      $display("scale = %s, data = %0d",cc.scale,cc.data);
    end
  end
endmodule


# scale = HIGH, data = 88
# scale = HIGH, data = 64
# scale = LOW, data = 15
# scale = HIGH, data = 70
# scale = LOW, data = 18
# exit
