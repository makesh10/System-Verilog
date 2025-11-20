module automatic_task;
  int y;

  task automatic double;
    int x;
    x++;
    y++;
    $display("x=%0d",x);
  endtask

  initial begin
    double;
    double;
    double;
    $display("y=%0d",y);
  end
endmodule


# x=1
# x=1
# x=1
# y=3
# exit
