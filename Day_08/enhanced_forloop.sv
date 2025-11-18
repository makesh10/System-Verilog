module enhanced_forloop;
  
  initial begin
    for(int i=0;i<10;i++) begin
      if (i==6)
        break;
      if (i==3)
        continue;
      $display("i= %0d",i);
    end
  end
endmodule


# i= 0
# i= 1
# i= 2
# i= 4
# i= 5
# exit
    
