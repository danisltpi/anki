module mux_always_v(out, a, b, sel);
  output out;
  input a, b, sel;
  reg out;

  always @(a or b or sel)
    if(sel)
      out = b;
    else         
      out = a;

endmodule



