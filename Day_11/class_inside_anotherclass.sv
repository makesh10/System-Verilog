class Outer;
  int outer_id;

  class Inner;
    int inner_id;

    function new(int x);
      inner_id = x;
    endfunction

    function void display_inner;
      $display("Inner ID = %0d",inner_id);
    endfunction
  endclass

  function new(int y);
    outer_id = y;
  endfunction

  function void display_outer;
    $display("Outer ID = %0d",outer_id);
  endfunction
endclass

module test;

  Outer out;         
  Outer::Inner in;      

  initial begin
    out = new(200);       
    out.display_outer;

    in = new(100);    
    in.display_inner;
  end

endmodule


# Outer ID = 200
# Inner ID = 100
# exit
