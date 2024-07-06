`timescale 1ns / 1ns

module test;

  initial begin
    $dumpfile("mux_gate_level_sv.vcd");
    $dumpvars(1);
  end

  logic a, b, sel;
  logic out;

  mux_gate_level_sv dut (out, a, b, sel);  // design under test

  initial begin  // initial blocks contain traditional imperative code

    sel = 1;
    a = 1;
    b = 0;
    display;
  
    sel = 0;
    a = 1;
    b = 0;
    display;
  
    sel = 1;
    a = 1;
    b = 0;
    display;
  
  end
  
  task display;
    #1 $display("time %0t: out:%0h, a:%0h, b:%0h, sel:%0h",
                 $time, out, a, b, sel);
  endtask
    
endmodule
