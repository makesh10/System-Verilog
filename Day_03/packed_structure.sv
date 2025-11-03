module packed_structure;
  typedef struct packed{
    logic [3:0]id;
    logic [7:0]data;
    logic name;
  }student;
  
  student S;
  
  initial begin
    S.id =4'b1111;
    S.data =8'hB5;
    S.name =1'b0;
    
    $display("STUDENT DETAILS");
    $display("id=%b",S.id);
    $display("data=%b",S.data);
    $display("name=%b",S.name);
    
    //Accessing one data
    $display("\nstudent's name:%0b",S.name);
    
    //display entire packed elements as one vector
    $display("Whole elements (packed bits) =%b",S);
  end
endmodule


# run -all
# STUDENT DETAILS
# id=1111
# data=10110101
# name=0
# 
# student's name:0
# Whole elements (packed bits) =1111101101010
# exit
