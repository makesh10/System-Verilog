module priority_case;
  logic [1:0]sel;
  logic y;

  initial begin
    sel = 2'b0x;

   priority case (sel)
     2'b00 : $display("y = A");
     2'b01 : $display("y = B");
     2'b01 : $display("y = C");
     2'b10 : $display("y = D");
     2'b11 : $display("y = E");
    endcase
    
  end
endmodule

# ** Warning: (vsim-8315) No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Process: /priority_case/#implicit#priority__9 File: design.sv Line: 9
# exit
