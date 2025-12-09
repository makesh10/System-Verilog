class bus;
  bit [31:0]data;
  int id;

  extern function void display();
    extern task show(bit [31:0]data = 500,int id = 10);
      endclass

      function void bus::display();
        $display("Data = %0d & ID = %0d",data,id);
      endfunction
    
      task bus::show(bit [31:0]data = 500,int id = 10);
      this.data=data;
      this.id=id;
        $display("Data = %0d & ID = %0d",data,id);
      endtask

module extern_method;
  bus b;
  
  initial begin
    b = new();
   
    b.data = 100;
    b.id = 1;
    
    b.display();
    b.show();
  end
endmodule


# Data = 100 & ID = 1
# Data = 500 & ID = 10
# exit
