
// Efinity Top-level template
// Version: 2025.1.110.3.16
// Date: 2025-08-12 20:02

// Copyright (C) 2013 - 2025 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as Portascope.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  Portascope
//     #4)  Insert design content.


module Portascope
(
  (* syn_peri_port = 0 *) input pll_adc_clk_in,
  (* syn_peri_port = 0 *) input pll_lvds_clk_in,
  (* syn_peri_port = 0 *) input [13:0] adc_data,
  (* syn_peri_port = 0 *) input adc_clk_60M,
  (* syn_peri_port = 0 *) input lvds_parallel_clk,
  (* syn_peri_port = 0 *) input lvds_serial_clk,
  (* syn_peri_port = 0 *) output [7:0] lvds_tx0_DATA,
  (* syn_peri_port = 0 *) output [7:0] lvds_tx1_DATA,
  (* syn_peri_port = 0 *) output [7:0] lvds_tx2_DATA,
  (* syn_peri_port = 0 *) output [7:0] lvds_tx3_DATA
);


endmodule

