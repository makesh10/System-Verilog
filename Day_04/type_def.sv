module type_definition;
  typedef logic[7:0]data;
  data d1,d2;
  
  initial begin
    d1=8'hAB;
    d2=8'hCD;
    $display("d1 = %h",d1);
    $display("d2 = %h",d2);
    
  end
endmodule


# d1 = ab
# d2 = cd
# exit
