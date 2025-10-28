module packed_array_3D;
  reg [3:0][2:0][1:0]data;
  
  initial begin
    data=24'b111100001111000011110000;
    
    $display("3D Packed Array Elements:=%b",data);
    $display("data[3]=%06b",data[3]);
    $display("data[2]=%06b",data[2]);
    $display("data[1]=%06b",data[1]);
    $display("data[0]=%06b",data[0]);
    
    $display("data[3][1]=%02b",data[3][1]);
    
    $display("data[3][2][1]=%0b",data[3][2][1]);
    
  end
endmodule


# 3D Packed Array Elements:=111100001111000011110000
# data[3]=111100
# data[2]=001111
# data[1]=000011
# data[0]=110000
# data[3][1]=11
# data[3][2][1]=1
# exit
