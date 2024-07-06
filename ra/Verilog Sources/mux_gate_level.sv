`timescale 1ns / 1ns

module mux_gate_level_sv( output logic out, input logic a, input logic b, input logic sel);

  logic f1, f2, nsel;
  
  and g1(f1, a, nsel), g2(f2, b, sel);
  or g3(out, f1, f2);
  not g4(nsel, sel);

endmodule 