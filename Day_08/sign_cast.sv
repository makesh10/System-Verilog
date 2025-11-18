module sign_casting;
  logic [3:0]y;
  int signed_value;
  int unsigned_value;
  
  initial begin
    y=4'b1010;
  signed_value=signed'(y);
  unsigned_value=unsigned'(y);
  
  $display("Original Value: %b",y);
  $display("\nSigned Value: %0d",signed_value);
  $display("Unsigned Value: %0d",unsigned_value);
  $display("\nSigned Value: %0d",signed'(y));
  $display("Unsigned Value: %0d",$unsigned(y));
  
  end  
endmodule


# Signed Value: -6
# Unsigned Value: 10
# exit
