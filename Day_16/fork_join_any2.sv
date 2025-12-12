module fork_join_any;
  
initial begin
   $display("@%0d: starts fork_join_any",$time); 
   #10 $display("@%0d: sequential after #10",$time);
fork
   $display("@%0d: parallel start",$time);
   #50 $display("@%0d: parallel after #50",$time);
   #10 $display("@%0d: parallel after #10",$time);
begin
   #30 $display("@%0d: sequential after #30",$time);
   #10 $display("@%0d: sequential after #10",$time);
end
join_any
   $display("@%0d: after join",$time);
   #80 $display("@%0d: final after #80",$time);
end
  
endmodule


# @0: starts fork_join_any
# @10: sequential after #10
# @10: parallel start
# @10: after join
# @20: parallel after #10
# @40: sequential after #30
# @50: sequential after #10
# @60: parallel after #50
# @90: final after #80
# exit
