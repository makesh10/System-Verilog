module queue;
  int q[$];
  
  initial begin
    q.push_back(100);
    q.push_back(200);
    q.push_back(300);
    $display("Initial Queue = %p",q);
   
    q.push_front(50);
    $display("After Front push 50 = %p",q);
    
    //Accessing Elements
    $display("First Element = %0d",q[0]);
    $display("Last Element = %0d",q[$]);
    
    q.pop_front();
    $display("After Pop Front = %p",q);
    
    q.pop_back();
    $display("After Pop Back = %p",q);
    
    //Size of the Queue
    $display("Current Size of the Queue = %0d",q.size());
    
    q.delete();
    $display("After delete, Queue Size = %0d",q.size());
    
  end
endmodule


# Initial Queue = '{100, 200, 300}
# After Front push 50 = '{50, 100, 200, 300}
# First Element = 50
# Last Element = 300
# After Pop Front = '{100, 200, 300}
# After Pop Back = '{100, 200}
# Current Size of the Queue = 2
# After delete, Queue Size = 0
# exit
