module do_while;
  int x=10;
  
  initial begin
    do begin
      x++;
    end while (x<5);
        $display("Do While Ends at %0d",x);
  end

endmodule


# Do While Ends at 11
# exit
