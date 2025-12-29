class implication;
  rand bit [7:0]z;
  rand enum {TOP,BOTTOM}state;

  constraint implic{(state==BOTTOM)->(z<30);}
endclass

module top;
  implication in;
  
  initial begin
    in=new();
    repeat(5)begin
      in.randomize();
      $display("state = %s, z = %0d", in.state,in.z);
    end
  end
endmodule


# state = BOTTOM, z = 17
# state = TOP, z = 233
# state = TOP, z = 170
# state = TOP, z = 236
# state = TOP, z = 26
# exit
