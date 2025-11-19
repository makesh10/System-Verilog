module priority_case;
  logic [1:0]sel;
  logic y;

  initial begin
    sel = 2'b01;

   priority case (sel)
     2'b00 : $display("y = A");
     2'b01 : $display("y = B");
     2'b01 : $display("y = C");
     2'b10 : $display("y = D");
     2'b11 : $display("y = E");
     default : $display("y = 0");
    endcase
    
  end
endmodule

# y = B
# exit
