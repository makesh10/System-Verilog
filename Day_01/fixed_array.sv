module fixed_array;
  int array[5];  

  initial begin
    array[0]=10;
    array[1]=15;
    array[2]=20;
    array[3]=25;
    array[4]=30;

    $display("Fixed Array Elements:");
    foreach (array[i]) begin
      $display("array[%0d]=%0d",i,array[i]);
    end

    $display("Size of array=%0d",$size(array));
  end

endmodule


# Fixed Array Elements:
# array[0]=10
# array[1]=15
# array[2]=20
# array[3]=25
# array[4]=30
# Size of array=5
# exit
