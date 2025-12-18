class random;
  randc bit [3:0]data;
  
  function void display();
    $display("Data = %0d",data);
  endfunction
endclass
            
module randomization;
  random rd;
  initial begin
    rd = new();
    repeat(16)begin
      rd.randomize();
      rd.display();
    end
  end
endmodule


# Data = 4
# Data = 7
# Data = 0
# Data = 6
# Data = 2
# Data = 1
# Data = 3
# Data = 11
# Data = 13
# Data = 9
# Data = 5
# Data = 12
# Data = 10
# Data = 15
# Data = 14
# Data = 8
# exit
