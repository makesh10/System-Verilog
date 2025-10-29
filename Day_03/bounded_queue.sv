module bounded_queue;
  int q[$:5];
  int i;
  int val;
  
  initial begin
    for (i=1;i<=8;i++) begin
      if (q.size()<5)
        q.push_back(i*10);
      else
        $display("Queue is full! Cannot add %0d",i*10);
    end

    $display("\nFinal Queue contents:%p",q);
    $display("Queue size=%0d",q.size());

      while (q.size()>0) begin
        val=q.pop_front();
        $display("Popped value = %0d, Remaining Queue: %p",val,q);
    end
  end
endmodule


# Queue is full! Cannot add 60
# Queue is full! Cannot add 70
# Queue is full! Cannot add 80
# 
# Final Queue contents:'{10, 20, 30, 40, 50}
# Queue size=5
# Popped value = 10, Remaining Queue: '{20, 30, 40, 50}
# Popped value = 20, Remaining Queue: '{30, 40, 50}
# Popped value = 30, Remaining Queue: '{40, 50}
# Popped value = 40, Remaining Queue: '{50}
# Popped value = 50, Remaining Queue: '{}
# exit
