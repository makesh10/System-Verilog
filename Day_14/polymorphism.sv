class animal;
  virtual function void sound();
    $display("Animal Sound");
  endfunction
endclass

class dog extends animal;
  function void sound();
    $display("Dog Barks");
  endfunction
endclass

class cat extends animal;
  function void sound();
    $display("Cat Meows");
  endfunction
endclass

module test;
  initial begin
    animal a;
    dog d = new();
    cat c = new();

    a = d;
    a.sound();

    a = c; 
    a.sound();
  end
endmodule


# Dog Barks
# Cat Meows
# exit
