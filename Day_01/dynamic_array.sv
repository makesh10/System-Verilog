module dynamic_array;
  int array[];
 
  initial begin
    array=new[10];
    array='{10,20,30,40,50,60,70,80,90,100};
    
    $display("Dynamic Array Elements:");
    foreach(array[i])
      $display("array[%0d]=[%0d]",i,array[i]);
    $display("Size of an array=%0d",$size(array));
    
    array.delete();
    $display("Size of an array after delete=%0d",array.size());
  end
endmodule


# Dynamic Array Elements:
# array[0]=[10]
# array[1]=[20]
# array[2]=[30]
# array[3]=[40]
# array[4]=[50]
# array[5]=[60]
# array[6]=[70]
# array[7]=[80]
# array[8]=[90]
# array[9]=[100]
# Size of an array=10
# Size of an array after delete=0
# exit
