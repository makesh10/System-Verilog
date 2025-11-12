module _continue;
  int i;
  
  initial begin
    for(i=1;i<=10;i++)begin
      if(i%2==0)
        continue;
        $display("ODD Numbers: %0d",i);
    end
  end
endmodule


# ODD Numbers: 1
# ODD Numbers: 3
# ODD Numbers: 5
# ODD Numbers: 7
# ODD Numbers: 9
# exit
