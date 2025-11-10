module incr_decr;
  int a=10;
  int b;
  
  initial begin
    b=++a;
    $display("Pre-Increment: a=%0d,b=%0d",a,b);
    
    a=10;
    b=a++;
    $display("Post-Increment: a=%0d,b=%0d",a,b);

    a=10;
    b=--a;
    $display("Pre-decrement: a=%0d,b=%0d",a,b);
    
    a=10;
    b=a--;
    $display("Post-decrement: a=%0d,b=%0d",a,b);

    for(b=0;b<3;b++)
      $display("Iteration(b=%0d)",b);
    
    for(b=0;b<3;++b)
      $display("Iteration(b=%0d)",b);

  end
endmodule


# Pre-Increment: a=11,b=11
# Post-Increment: a=11,b=10
# Pre-decrement: a=9,b=9
# Post-decrement: a=9,b=10
# Iteration(b=0)
# Iteration(b=1)
# Iteration(b=2)
# Iteration(b=0)
# Iteration(b=1)
# Iteration(b=2)
# exit
