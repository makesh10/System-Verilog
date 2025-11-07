module _string;
  string name = "MAKESH KUMAR";
  string message;
  
  initial begin
    message={"Hi,", name,"!"};
    $display("name = %s",name);
    $display("message = %s",message);
  end
endmodule


# name = MAKESH KUMAR
# message = Hi,MAKESH KUMAR!
# exit
