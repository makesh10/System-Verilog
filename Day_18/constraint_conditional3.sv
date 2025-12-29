class packet;
  rand bit [7:0]value;
  rand enum {LOW,MID,HIGH,ELSE}state;

  constraint range{if(state==LOW)
                     {value<30;}
                   else if(state==MID) 
                   {value>=30;
                    value<=70;}
                     else if(state==HIGH)
                     {value>70;}
                   else
                     value inside {1,2,3};
                     }
endclass

module top;
  packet pkt;
  
  initial begin
    pkt=new();
    repeat(10)begin
      pkt.randomize();
      $display("state = %s, value = %0d",pkt.state,pkt.value);
    end
  end
endmodule


# state = HIGH, value = 147
# state = MID, value = 65
# state = ELSE, value = 1
# state = LOW, value = 9
# state = LOW, value = 5
# state = HIGH, value = 246
# state = HIGH, value = 170
# state = LOW, value = 9
# state = MID, value = 40
# state = HIGH, value = 95
# exit
