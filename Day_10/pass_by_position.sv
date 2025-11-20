module pass_by_position;
  
  function void display(string name,int value);
    $display("Values passed by Position: %s,%0d",name,value);
  endfunction

  initial begin
     display(.value(100),.name("Archana"));
  end
endmodule


# Values passed by Position: Archana,100
# exit
