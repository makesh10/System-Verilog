module program_(
  output bit [3:0]out);
  initial begin
    out<=2;
  end
endmodule

program block(
  input [3:0]out);  
  initial begin
    if(out==2)
      $display("Out is 2");
    else
      $display("Out = %0d",out);
  end
endprogram

module program_block;
  wire [3:0]out;
  program_ DUT(out);
  block tb(out);
endmodule

# Out is 2
