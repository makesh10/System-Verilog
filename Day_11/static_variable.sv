class counter;
  static int total_count=0;
  int id;                       

  function new(int id);
    this.id++;
    total_count++;             
  endfunction

  function void show();
    $display("ID=%0d, Count=%0d",id,total_count);
  endfunction
endclass


module static_variable;
  counter c1,c2,c3;

  initial begin
    c1=new(1);
    c1.show();
    c2=new(2);
    c2.show();
    c3=new(3);
    c3.show();
  end
endmodule


# ID=1, Count=1
# ID=1, Count=2
# ID=1, Count=3
# exit
