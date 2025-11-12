module _break;
  int data;
  
  initial begin
    for(data=1;data<=10;data++)begin
      if (data==7)
        break;
    $display("DATA = %0d",data);
    end
    $display("Loop Exited at DATA %0d",data);
  end
endmodule


# DATA = 1
# DATA = 2
# DATA = 3
# DATA = 4
# DATA = 5
# DATA = 6
# Loop Exited at DATA 7
# exit
