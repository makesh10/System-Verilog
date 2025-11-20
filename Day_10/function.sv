module _function;
  int a,b,result;
    
  function int sum(input int a,b);
      return a+b;
      endfunction
  
    initial begin
      a=10;
      b=20;
      result=sum(a,b);
      $display("Sum =%0d",result);
    end
endmodule

# Sum =30
# exit
