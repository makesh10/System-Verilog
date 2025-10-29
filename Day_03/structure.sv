module structure;
  typedef struct{
    string name;
    int register_no;
    int marks;
  } student;
  
  student s1,s2;
  
  initial begin
    s1.name        ="Makesh";
    s1.register_no = 13316;
    s1.marks       = 99;
    
    s2='{name:"Nivedha",register_no:13317,marks:98};
    
    $display("Student Details");
    $display("Name:%s,Register_No:%0d,Marks:%0d",s1.name,s1.register_no,s1.marks);
    $display("Name:%s,Register_No:%0d,Marks:%0d",s2.name,s2.register_no,s2.marks);
    
    //Accessing One Student
    $display("\n%s's Mark:%0d",s1.name,s1.marks);
    
  end
endmodule


# Student Details
# Name:Makesh,Register_No:13316,Marks:99
# Name:Nivedha,Register_No:13317,Marks:98
# 
# Makesh's Mark:99
# exit
