class scope;
  bit [31:0]data;
  static int id;
  
  static function display(int id);
    $display("Id = %0d",id);
  endfunction
  
  function auto_display(int id);
    $display("Id = %0d",id);
  endfunction
endclass

module scope_resolution_operator;
  initial begin
    scope::id = 10;
    scope::display(scope::id);
    //scope::data = 2; // illegal
    //scope::auto_display(scope::id); // illegal
  end
endmodule


# Id = 10
# exit
