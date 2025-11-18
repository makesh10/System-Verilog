module static_typecasting;
  string n;
  int num[3];
  real real_num;
  
  initial begin
    n= "M";
    real_num=2.8;
    
    num[0]=int'(n);
    num[1]=int'(real_num);
    
    real_num=2.125+real'({4'h1,4'hA});
    num[2]=int'((num[0]==65)?real_num:4.7);
     
    $display("casting from string to int: num[0] = %0d",num[0]);
    $display("casting from real to int: num[1] = %0d",num[1]);
    $display("casting from int to real: real_num = %0f",real_num);
    $display("casting an expression from real to int: num[2] = %0d",num[2]);
  end
endmodule


# casting from string to int: num[0] = 77
# casting from real to int: num[1] = 3
# casting from int to real: real_num = 28.125000
# casting an expression from real to int: num[2] = 5
# exit
