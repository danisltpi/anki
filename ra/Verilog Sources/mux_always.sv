module mux_always_sv(out, a, b, sel);
  output logic out;
  input logic a, b, sel;

  always_comb
    if(sel)
      out = b;
    else         
      out = a;

endmodule
