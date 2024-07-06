//module mux_gate_level_v(out, a, b, sel);
//  output out;
//  input a, b, sel;

`timescale 1ns / 1ns

module mux_gate_level_v(output out, input a, input b, input sel);
  
  wire f1, f2, nsel;
  
  or g3(out, f1, f2);
  and g1(f1, a, nsel), g2(f2, b, sel);
  not g4(nsel, sel);
  
endmodule 
