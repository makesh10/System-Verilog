module enumerated;
  typedef enum {RED,YELLOW,GREEN}colour;
  colour cs[];

  initial begin
    cs = '{RED, YELLOW, GREEN};

    foreach (cs[i]) begin
      $display("Colour[%0d] = %s, Value = %0d", i, cs[i].name(), cs[i]);
    end
  end
endmodule


# Colour[0] = RED, Value = 0
# Colour[1] = YELLOW, Value = 1
# Colour[2] = GREEN, Value = 2
# exit
