module randcase_r;
  int data;

  initial begin
    repeat(6)begin
      randcase
        3:begin
             data=20;
          $display("Case 1 --> Data = %0d",data);
          end
        4:begin
             data=40;
          $display("Case 2 --> Data = %0d",data);
          end
        6:begin
             data=60;
          $display("Case 3 --> Data = %0d",data);
          end
      endcase
    end
  end
endmodule


# Case 2 --> Data = 40
# Case 3 --> Data = 60
# Case 3 --> Data = 60
# Case 1 --> Data = 20
# Case 3 --> Data = 60
# Case 3 --> Data = 60
# exit
