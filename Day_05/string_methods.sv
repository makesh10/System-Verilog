module string_methods;
  string s="SYSTEM VERILOG";
  string v="SYSTEM VERILOG";
  
  initial begin
    if (s==v)
      $display("Equal");
    else
      $display("Not Equal");
  end
  
  initial begin
    $display("Original: %s",s);
    $display("LOWERCASE of s: %s",s.tolower());
    $display("Length: %0d",s.len());
    $display("Substring: %s",s.substr(0,5));
    $display("Get Character 3: %s",s.getc(3));
    
    s={"HELLO! ",s};
    $display("Concatenation: %s",s);
    
    s.putc(8,"L");
    $display("Replace Character 5: %s",s);
    
    s="";
    $display("Empty String: %s",s);
    
  end
  
endmodule


# Equal
# Original: SYSTEM VERILOG
# LOWERCASE of s: system verilog
# Length: 14
# Substring: SYSTEM
# Get Character 3: T
# Concatenation: HELLO! SYSTEM VERILOG
# Replace Character 5: HELLO! SLSTEM VERILOG
# Empty String: 
# exit
