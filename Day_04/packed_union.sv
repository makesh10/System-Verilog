module packed_union;
  typedef union packed{
    logic [7:0]full;
    struct packed{
      logic [3:0]upper;
      logic [3:0]lower;
    }part;
  }word;
  
  word data;
  
  initial begin
    data.full=8'hAB; //1011_1010
    
    $display("Full Value = %h",data.full);
    $display("Upper Value = %h",data.part.upper);
    $display("Lower Value = %h",data.part.lower);
    
  end
endmodule


# Full Value = ab
# Upper Value = a
# Lower Value = b
# exit
