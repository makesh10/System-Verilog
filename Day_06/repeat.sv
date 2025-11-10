module repeat_loop;
  int array[7] = '{100,200,300,400,500,600,700};
  int i;
  
  initial begin
    repeat($size(array))begin
      $display("array[%0d] = %0d",i,array[i]);
      i++;
    end
    
    repeat(3)
      $display("MAKESHKUMAR");
  end
endmodule


# array[0] = 100
# array[1] = 200
# array[2] = 300
# array[3] = 400
# array[4] = 500
# array[5] = 600
# array[6] = 700
# MAKESHKUMAR
# MAKESHKUMAR
# MAKESHKUMAR
# exit
