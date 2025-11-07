package my_pkg;
  // Constant
  parameter int DATA_WIDTH=8;

  // Typedef
  typedef struct{
    int id;
    string name;
  }student_t;

  // Enum
  typedef enum {RED,GREEN,BLUE}colour_t;

  // Function
  function int add(input int a,input int b);
    return a+b;
  endfunction

  // Task
  task display_student(input student_t s);
    $display("Student ID: %0d,Name: %s",s.id,s.name);
  endtask
endpackage

module top;
  my_pkg::student_t s1;
  int result;

  initial begin
    s1.id   = 5821;
    s1.name = "MAKESH";
    result  = my_pkg::add(3,7);
    $display("Result = %0d",result);
    my_pkg::display_student(s1);
  end


# Result = 10
# Student ID: 5821,Name: MAKESH
# exit
endmodule
