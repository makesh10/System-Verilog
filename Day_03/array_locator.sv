module array_locator;
  int q[$]='{10,20,20,30,40,50,60,80,70,80,90,100};
  int result[$];
  int index[$];
  
  initial begin
    $display("Queue Elements: %p",q);
    
    //find elements greater than 50
    result=q.find(x) with (x>50);
    $display("Elements > 50: %p",result);
    
    //find elements less than 60
    result=q.find(x) with (x<60);
    $display("Elements < 60: %p",result);
    
    //find indice where element=80
    index=q.find_index(x) with (x==80);
    $display("Indice of 80: %p",index);
    
    //find max and min
    $display("Maximum value: %p",q.max());
    $display("Minimum value: %p",q.min());
    
    //unique elements
    $display("Unique Elements: %p",q.unique());
    
    //sum of all elements
    $display("Sum of All Queue Elements: %p",q.sum());
    
    //product of all elements
    $display("Product of All Elements: %p",q.product());
    
  end
endmodule 


# Queue Elements: '{10, 20, 20, 30, 40, 50, 60, 80, 70, 80, 90, 100}
# Elements > 50: '{60, 80, 70, 80, 90, 100}
# Elements < 60: '{10, 20, 20, 30, 40, 50}
# Indice of 80: '{7, 9}
# Maximum value: '{100}
# Minimum value: '{10}
# Unique Elements: '{10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
# Sum of All Queue Elements: 650
# Product of All Elements: 251658240
# exit
