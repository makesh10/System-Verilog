class unique_constraint;
  rand bit [3:0]array[10];
  constraint range{unique {array};
                   foreach(array[i]) array[i]<10;}  
  function void display();
    $display("Array = %p",array);
  endfunction
endclass

module top;
  unique_constraint uc;
  initial begin
    uc=new();
    uc.randomize();
    uc.display();   
  end
endmodule


# Array = '{2, 6, 5, 7, 3, 1, 4, 9, 8, 0}
# exit
