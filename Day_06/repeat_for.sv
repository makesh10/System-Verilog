module repeat_for;
  int i;
  
  initial begin
    for(i=0;i<=2;i++)begin
      $display("Good Morning!");   
      $display("Have a Nice Day");
      $display("----------------");
    end 
  end 
endmodule 


# Good Morning!
# Have a Nice Day
# ----------------
# Good Morning!
# Have a Nice Day
# ----------------
# Good Morning!
# Have a Nice Day
# ----------------
# exit
