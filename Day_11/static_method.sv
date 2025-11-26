class packet;
  static byte packet_id;
  static byte no_of_pkts_created;
  
  function new();
    packet_id++;
    no_of_pkts_created++;
  endfunction
  
  static function void display_packets_created;
    $display("\t Packet ID is %0d",packet_id);
    $display("\t %0d Packets Created.",no_of_pkts_created);
  endfunction
endclass

module static_properties;
packet pkt[3];
   initial begin
     foreach (pkt [i])begin
       pkt[i]=new();
     end
      pkt[0].display_packets_created();
   end
endmodule


# 	 Packet ID is 3
# 	 3 Packets Created.
# exit
