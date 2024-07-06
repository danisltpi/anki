`timescale 1ns / 1ns

module test;

initial begin
  $dumpfile("mux_always_sv.vcd");
  $dumpvars(1);
end

logic a, b, sel;
logic out;

mux_always_sv dut (out, a, b, sel);  // design under test

initial begin  // initial blocks contain traditional imperative code

  $sformatf("%v", a);
  $display ("Strength of a = %v Value of a = %b", a, a);
//  $display ("$typename of variable a:  %s", $typename(a));
//  $display ("$typename of variable out:  %s", $typename(out));
  $display ("$bits of variable a:  %0d", $bits(a));
  $display ("$bits of variable out:  %0d", $bits(out));
//  $display ("$isunbounded of variable a:  %0d", $isunbounded(a));
//  $display ("$isunbounded of variable out:  %0d", $isunbounded(out));
  

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
