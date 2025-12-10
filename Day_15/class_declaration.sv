class declaration;
  int x;
  
  task set(int i); //method 1
    x=i;
  endtask
  
  function int get(); //method 2
    return x;
  endfunction
endclass

module class_declaration;
  initial begin
    declaration dc=new();
    dc.set(5);
    $display("Value of x = %0d",dc.get());
  end
endmodule

# Value of x = 5
# exit
