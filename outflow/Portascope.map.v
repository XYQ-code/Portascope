
//
// Verific Verilog Description of module Portascope
//

module Portascope (pll_adc_clk_in, pll_lvds_clk_in, adc_data_in, adc_clk_60M, 
            lvds_parallel_clk, lvds_serial_clk, lvds_tx0_DATA, lvds_tx1_DATA, 
            lvds_tx2_DATA, lvds_tx3_DATA);
    input pll_adc_clk_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(3)
    input pll_lvds_clk_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(4)
    input [13:0]adc_data_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(5)
    input adc_clk_60M /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(6)
    input lvds_parallel_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(7)
    input lvds_serial_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    output [7:0]lvds_tx0_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    output [7:0]lvds_tx1_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    output [7:0]lvds_tx2_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    output [7:0]lvds_tx3_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    
    wire [11:0]\u_lcd_lvds/n8 ;
    
    wire \u_lcd_lvds/add_55/n4 ;
    wire [15:0]\u_reset_gen_lvds/n7 ;
    
    wire \u_reset_gen_lvds/add_13/n2 ;
    wire [10:0]\u_bram_ctrl/n8 ;
    
    wire \bram_data_out[13] , \bram_data_out[12] , \u_bram_ctrl/add_47/n18 , 
        sys_rst_n_adc;
    wire [15:0]\u_reset_gen_adc/reset_counter ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(11)
    
    wire \u_bram_ctrl/add_47/n16 , \u_bram_ctrl/add_47/n14 , \u_bram_ctrl/add_47/n12 ;
    wire [9:0]\u_bram_ctrl/n77 ;
    
    wire \u_bram_ctrl/add_31/n2 , sys_rst_n_lvds;
    wire [15:0]\u_reset_gen_lvds/reset_counter ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(11)
    
    wire \u_bram_ctrl/add_47/n10 , \u_bram_ctrl/add_47/n8 ;
    wire [27:0]adc_data_out;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(40)
    
    wire \u_bram_ctrl/add_47/n6 , \u_bram_ctrl/add_47/n4 ;
    wire [10:0]bram_addr_b;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(43)
    wire [10:0]bram_addr_a;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(42)
    
    wire \u_bram_ctrl/wr_idx_s1 , \u_bram_ctrl/wr_idx_s2 , \u_reset_gen_lvds/add_13/n22 , 
        \u_bram_ctrl/add_47/n2 ;
    wire [6:0]\u_bram_ctrl/acc ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(64)
    
    wire \u_bram_ctrl/add_31/n18 , \u_lcd_lvds/add_55/n2 , \bram_data_out[11] , 
        \bram_data_out[10] , \bram_data_out[9] , \bram_data_out[8] , \u_lcd_lvds/add_55/n8 , 
        \bram_data_out[7] , \bram_data_out[6] , \bram_data_out[5] , \bram_data_out[4] , 
        \bram_data_out[3] , \bram_data_out[2] , \bram_data_out[1] , \bram_data_out[0] , 
        \u_lcd_lvds/add_55/n6 ;
    wire [11:0]\u_lcd_lvds/n35 ;
    
    wire \u_lcd_lvds/add_57/n2 ;
    wire [11:0]\u_lcd_lvds/v_cnt ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(43)
    
    wire \u_lcd_lvds/data_en , \u_reset_gen_lvds/add_13/n20 , \u_reset_gen_lvds/add_13/n18 , 
        \u_lcd_lvds/add_55/n10 , \u_reset_gen_lvds/add_13/n16 , \u_bram_ctrl/add_31/n16 ;
    wire [11:0]\u_lcd_lvds/h_cnt ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(42)
    
    wire \u_bram_ctrl/add_31/n14 , \u_bram_ctrl/add_31/n12 , \u_lcd_lvds/add_57/n8 , 
        \u_lcd_lvds/add_57/n6 , \u_lcd_lvds/add_57/n4 , \u_lcd_lvds/add_55/n20 , 
        \u_lcd_lvds/add_55/n18 , \u_lcd_lvds/add_55/n16 , \u_lcd_lvds/add_55/n14 , 
        \u_lcd_lvds/add_55/n12 , \u_bram_ctrl/add_31/n10 , \u_reset_gen_lvds/add_13/n14 , 
        \u_reset_gen_lvds/add_13/n12 , \u_reset_gen_lvds/add_13/n10 , \u_reset_gen_lvds/add_13/n8 , 
        \u_reset_gen_lvds/add_13/n6 , \u_reset_gen_lvds/add_13/n4 ;
    wire [15:0]\u_reset_gen_adc/n7 ;
    
    wire \u_reset_gen_adc/add_13/n28 , \u_reset_gen_adc/add_13/n26 , \u_reset_gen_adc/add_13/n24 , 
        \u_reset_gen_adc/add_13/n22 , \u_reset_gen_adc/add_13/n20 , \u_reset_gen_adc/add_13/n18 , 
        \u_bram_ctrl/add_31/n8 , \u_reset_gen_adc/add_13/n16 , \u_reset_gen_adc/add_13/n14 , 
        \u_bram_ctrl/add_31/n6 , \u_lcd_lvds/add_57/n20 , \u_lcd_lvds/add_57/n18 , 
        \u_lcd_lvds/add_57/n16 , \u_lcd_lvds/add_57/n14 , \u_lcd_lvds/add_57/n12 , 
        \u_lcd_lvds/add_57/n10 , \u_reset_gen_adc/add_13/n12 , \u_reset_gen_adc/add_13/n10 , 
        \u_reset_gen_adc/add_13/n8 , \u_reset_gen_adc/add_13/n6 , \u_reset_gen_adc/add_13/n4 , 
        \u_reset_gen_adc/add_13/n2 , \u_bram_ctrl/add_31/n4 , \u_reset_gen_lvds/add_13/n28 , 
        \u_lcd_lvds/wave_y_b[9] , \u_lcd_lvds/wave_y_b[8] , \u_lcd_lvds/wave_y_b[7] , 
        \u_lcd_lvds/wave_y_b[6] , \u_lcd_lvds/wave_y_b[5] , \u_lcd_lvds/wave_y_b[4] , 
        \u_lcd_lvds/wave_y_b[3] , \u_lcd_lvds/wave_y_b[2] , \u_lcd_lvds/wave_y_b[1] , 
        \u_lcd_lvds/wave_y_b[0] , \u_reset_gen_lvds/add_13/n26 , \u_reset_gen_lvds/add_13/n24 , 
        \bram_addr_b[10] , \u_reset_gen_adc/n5 , \u_reset_gen_lvds/n5 , 
        \lvds_parallel_clk~O , \adc_clk_60M~O ;
    wire [9:0]\u_bram_ctrl/n88 ;
    wire [6:0]\u_bram_ctrl/n99 ;
    wire [11:0]\u_lcd_lvds/n21 ;
    
    wire \u_lcd_lvds/equal_4/n23 , \u_lcd_lvds/n114 , \u_lcd_lvds/equal_33/n63 , 
        \u_lcd_lvds/equal_36/n63 , \u_bram_ctrl/double_step , n358, n359, 
        n360, n361, n362, n363, n364, n365, n366, n367, n368, 
        n369, n370, n371, n372, n373, n374, n375, n376, n377, 
        n378, n379, n380, n381, n382, n383, n384, n385, n386, 
        n387, n388, n389, n390, n391, n392, n393, n394, n395, 
        n396, n397, n398, n399;
    
    assign lvds_tx0_DATA[7] = lvds_tx0_DATA[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx0_DATA[6] = lvds_tx0_DATA[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx0_DATA[5] = lvds_tx0_DATA[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx0_DATA[4] = lvds_tx0_DATA[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx0_DATA[3] = lvds_tx0_DATA[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx0_DATA[1] = lvds_tx0_DATA[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx0_DATA[0] = lvds_tx0_DATA[2] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx1_DATA[7] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx1_DATA[6] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx1_DATA[5] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx1_DATA[4] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx1_DATA[3] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx1_DATA[2] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx1_DATA[1] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx2_DATA[7] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx2_DATA[6] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx2_DATA[5] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx2_DATA[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx2_DATA[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx2_DATA[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx2_DATA[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx2_DATA[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx3_DATA[7] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    assign lvds_tx3_DATA[6] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    assign lvds_tx3_DATA[5] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    assign lvds_tx3_DATA[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    assign lvds_tx3_DATA[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    assign lvds_tx3_DATA[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    assign lvds_tx3_DATA[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(12)
    assign lvds_tx3_DATA[0] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__887 (.I0(\u_reset_gen_adc/reset_counter [8]), .I1(\u_reset_gen_adc/reset_counter [9]), 
            .I2(\u_reset_gen_adc/reset_counter [10]), .I3(\u_reset_gen_adc/reset_counter [15]), 
            .O(n358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__887.LUTMASK = 16'h8000;
    EFX_FF \sys_rst_n_adc~FF  (.D(\u_reset_gen_adc/n5 ), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(sys_rst_n_adc)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \sys_rst_n_adc~FF .CLK_POLARITY = 1'b1;
    defparam \sys_rst_n_adc~FF .CE_POLARITY = 1'b1;
    defparam \sys_rst_n_adc~FF .SR_POLARITY = 1'b1;
    defparam \sys_rst_n_adc~FF .D_POLARITY = 1'b0;
    defparam \sys_rst_n_adc~FF .SR_SYNC = 1'b1;
    defparam \sys_rst_n_adc~FF .SR_VALUE = 1'b0;
    defparam \sys_rst_n_adc~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[0]~FF  (.D(\u_reset_gen_adc/reset_counter [0]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[0]~FF .D_POLARITY = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[0]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[1]~FF  (.D(\u_reset_gen_adc/n7 [1]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[1]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[2]~FF  (.D(\u_reset_gen_adc/n7 [2]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[2]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[2]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[2]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[3]~FF  (.D(\u_reset_gen_adc/n7 [3]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[3]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[3]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[3]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[4]~FF  (.D(\u_reset_gen_adc/n7 [4]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[4]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[4]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[4]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[5]~FF  (.D(\u_reset_gen_adc/n7 [5]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[5]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[5]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[5]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[6]~FF  (.D(\u_reset_gen_adc/n7 [6]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[6]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[6]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[6]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[7]~FF  (.D(\u_reset_gen_adc/n7 [7]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[7]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[7]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[7]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[8]~FF  (.D(\u_reset_gen_adc/n7 [8]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[8]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[8]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[8]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[8]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[9]~FF  (.D(\u_reset_gen_adc/n7 [9]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[9]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[9]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[9]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[9]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[10]~FF  (.D(\u_reset_gen_adc/n7 [10]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[10]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[10]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[10]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[10]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[11]~FF  (.D(\u_reset_gen_adc/n7 [11]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[11]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[11]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[11]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[11]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[12]~FF  (.D(\u_reset_gen_adc/n7 [12]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[12]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[12]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[12]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[12]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[13]~FF  (.D(\u_reset_gen_adc/n7 [13]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[13]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[13]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[13]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[13]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[14]~FF  (.D(\u_reset_gen_adc/n7 [14]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[14]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[14]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[14]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[14]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_adc/reset_counter[15]~FF  (.D(\u_reset_gen_adc/n7 [15]), 
           .CE(\u_reset_gen_adc/n5 ), .CLK(\adc_clk_60M~O ), .SR(1'b0), 
           .Q(\u_reset_gen_adc/reset_counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_adc/reset_counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[15]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[15]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[15]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_adc/reset_counter[15]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_adc/reset_counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sys_rst_n_lvds~FF  (.D(\u_reset_gen_lvds/n5 ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(1'b0), .Q(sys_rst_n_lvds)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \sys_rst_n_lvds~FF .CLK_POLARITY = 1'b1;
    defparam \sys_rst_n_lvds~FF .CE_POLARITY = 1'b1;
    defparam \sys_rst_n_lvds~FF .SR_POLARITY = 1'b1;
    defparam \sys_rst_n_lvds~FF .D_POLARITY = 1'b0;
    defparam \sys_rst_n_lvds~FF .SR_SYNC = 1'b1;
    defparam \sys_rst_n_lvds~FF .SR_VALUE = 1'b0;
    defparam \sys_rst_n_lvds~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[0]~FF  (.D(\u_reset_gen_lvds/reset_counter [0]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[0]~FF .D_POLARITY = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[0]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[1]~FF  (.D(\u_reset_gen_lvds/n7 [1]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[1]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[2]~FF  (.D(\u_reset_gen_lvds/n7 [2]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[2]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[2]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[2]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[3]~FF  (.D(\u_reset_gen_lvds/n7 [3]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[3]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[3]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[3]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[4]~FF  (.D(\u_reset_gen_lvds/n7 [4]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[4]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[4]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[4]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[5]~FF  (.D(\u_reset_gen_lvds/n7 [5]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[5]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[5]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[5]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[6]~FF  (.D(\u_reset_gen_lvds/n7 [6]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[6]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[6]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[6]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[7]~FF  (.D(\u_reset_gen_lvds/n7 [7]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[7]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[7]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[7]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[8]~FF  (.D(\u_reset_gen_lvds/n7 [8]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[8]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[8]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[8]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[8]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[9]~FF  (.D(\u_reset_gen_lvds/n7 [9]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[9]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[9]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[9]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[9]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[10]~FF  (.D(\u_reset_gen_lvds/n7 [10]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[10]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[10]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[10]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[10]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[11]~FF  (.D(\u_reset_gen_lvds/n7 [11]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[11]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[11]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[11]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[11]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[12]~FF  (.D(\u_reset_gen_lvds/n7 [12]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[12]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[12]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[12]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[12]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[13]~FF  (.D(\u_reset_gen_lvds/n7 [13]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[13]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[13]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[13]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[13]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[14]~FF  (.D(\u_reset_gen_lvds/n7 [14]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[14]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[14]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[14]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[14]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_reset_gen_lvds/reset_counter[15]~FF  (.D(\u_reset_gen_lvds/n7 [15]), 
           .CE(\u_reset_gen_lvds/n5 ), .CLK(\lvds_parallel_clk~O ), .SR(1'b0), 
           .Q(\u_reset_gen_lvds/reset_counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(21)
    defparam \u_reset_gen_lvds/reset_counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[15]~FF .SR_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[15]~FF .D_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[15]~FF .SR_SYNC = 1'b1;
    defparam \u_reset_gen_lvds/reset_counter[15]~FF .SR_VALUE = 1'b0;
    defparam \u_reset_gen_lvds/reset_counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[4]~FF  (.D(adc_data_in[4]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[4]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[4]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[4]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[4]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[4]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[4]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[5]~FF  (.D(adc_data_in[5]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[5]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[5]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[5]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[5]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[5]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[5]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[6]~FF  (.D(adc_data_in[6]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[6]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[6]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[6]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[6]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[6]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[6]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[7]~FF  (.D(adc_data_in[7]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[7]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[7]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[7]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[7]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[7]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[7]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[8]~FF  (.D(adc_data_in[8]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[8]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[8]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[8]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[8]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[8]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[8]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[9]~FF  (.D(adc_data_in[9]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[9]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[9]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[9]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[9]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[9]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[9]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[10]~FF  (.D(adc_data_in[10]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[10]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[10]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[10]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[10]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[10]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[10]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[11]~FF  (.D(adc_data_in[11]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[11]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[11]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[11]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[11]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[11]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[11]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[12]~FF  (.D(adc_data_in[12]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[12]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[12]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[12]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[12]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[12]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[12]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[13]~FF  (.D(adc_data_in[13]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[13]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[13]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[13]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[13]~FF .D_POLARITY = 1'b0;
    defparam \adc_data_out[13]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[13]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[1]~FF  (.D(adc_data_in[1]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[1]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[1]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[1]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[1]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[1]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[1]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[2]~FF  (.D(adc_data_in[2]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[2]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[2]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[2]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[2]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[2]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[2]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[3]~FF  (.D(adc_data_in[3]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[3]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[3]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[3]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[3]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[3]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[3]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \adc_data_out[0]~FF  (.D(adc_data_in[0]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(1'b0), .Q(adc_data_out[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\adc\adc_capture.v(34)
    defparam \adc_data_out[0]~FF .CLK_POLARITY = 1'b0;
    defparam \adc_data_out[0]~FF .CE_POLARITY = 1'b1;
    defparam \adc_data_out[0]~FF .SR_POLARITY = 1'b1;
    defparam \adc_data_out[0]~FF .D_POLARITY = 1'b1;
    defparam \adc_data_out[0]~FF .SR_SYNC = 1'b1;
    defparam \adc_data_out[0]~FF .SR_VALUE = 1'b0;
    defparam \adc_data_out[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[3]~FF  (.D(\u_bram_ctrl/n88 [3]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[3]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[3]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[3]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[3]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[3]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[3]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[2]~FF  (.D(\u_bram_ctrl/n88 [2]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[2]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[2]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[2]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[2]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[2]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[2]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[1]~FF  (.D(\u_bram_ctrl/n88 [1]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[1]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[1]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[1]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[1]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[1]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[1]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[9]~FF  (.D(\u_bram_ctrl/n8 [9]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[9]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[9]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[9]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[9]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[9]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[9]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[0]~FF  (.D(bram_addr_a[0]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[0]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[0]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[0]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[0]~FF .D_POLARITY = 1'b0;
    defparam \bram_addr_a[0]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[0]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[0]~FF  (.D(\u_bram_ctrl/n88 [0]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[0]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[0]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[0]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[0]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[0]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[0]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/wr_idx_s1~FF  (.D(bram_addr_a[10]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/wr_idx_s1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(56)
    defparam \u_bram_ctrl/wr_idx_s1~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/wr_idx_s1~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/wr_idx_s1~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/wr_idx_s1~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/wr_idx_s1~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/wr_idx_s1~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/wr_idx_s1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[3]~FF  (.D(\u_bram_ctrl/n8 [3]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[3]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[3]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[3]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[3]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[3]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[3]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[8]~FF  (.D(\u_bram_ctrl/n8 [8]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[8]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[8]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[8]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[8]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[8]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[8]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[7]~FF  (.D(\u_bram_ctrl/n8 [7]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[7]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[7]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[7]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[7]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[7]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[7]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/wr_idx_s2~FF  (.D(\u_bram_ctrl/wr_idx_s1 ), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/wr_idx_s2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(56)
    defparam \u_bram_ctrl/wr_idx_s2~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/wr_idx_s2~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/wr_idx_s2~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/wr_idx_s2~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/wr_idx_s2~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/wr_idx_s2~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/wr_idx_s2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[4]~FF  (.D(\u_bram_ctrl/n88 [4]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[4]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[4]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[4]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[4]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[4]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[4]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[5]~FF  (.D(\u_bram_ctrl/n88 [5]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[5]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[5]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[5]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[5]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[5]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[5]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[6]~FF  (.D(\u_bram_ctrl/n88 [6]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[6]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[6]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[6]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[6]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[6]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[6]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[7]~FF  (.D(\u_bram_ctrl/n88 [7]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[7]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[7]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[7]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[7]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[7]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[7]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[8]~FF  (.D(\u_bram_ctrl/n88 [8]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[8]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[8]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[8]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[8]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[8]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[8]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_b[9]~FF  (.D(\u_bram_ctrl/n88 [9]), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(sys_rst_n_lvds), .Q(bram_addr_b[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \bram_addr_b[9]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_b[9]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_b[9]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_b[9]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_b[9]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_b[9]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_b[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[6]~FF  (.D(\u_bram_ctrl/n8 [6]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[6]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[6]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[6]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[6]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[6]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[6]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[4]~FF  (.D(\u_bram_ctrl/n8 [4]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[4]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[4]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[4]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[4]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[4]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[4]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[5]~FF  (.D(\u_bram_ctrl/n8 [5]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[5]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[5]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[5]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[5]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[5]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[5]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/acc[0]~FF  (.D(\u_bram_ctrl/n99 [0]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/acc [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \u_bram_ctrl/acc[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/acc[0]~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[0]~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/acc[0]~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/acc[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[2]~FF  (.D(\u_bram_ctrl/n8 [2]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[2]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[2]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[2]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[2]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[2]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[2]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[1]~FF  (.D(\u_bram_ctrl/n8 [1]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[1]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[1]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[1]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[1]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[1]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[1]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bram_addr_a[10]~FF  (.D(\u_bram_ctrl/n8 [10]), .CE(1'b1), .CLK(\adc_clk_60M~O ), 
           .SR(sys_rst_n_adc), .Q(bram_addr_a[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(42)
    defparam \bram_addr_a[10]~FF .CLK_POLARITY = 1'b1;
    defparam \bram_addr_a[10]~FF .CE_POLARITY = 1'b1;
    defparam \bram_addr_a[10]~FF .SR_POLARITY = 1'b0;
    defparam \bram_addr_a[10]~FF .D_POLARITY = 1'b1;
    defparam \bram_addr_a[10]~FF .SR_SYNC = 1'b0;
    defparam \bram_addr_a[10]~FF .SR_VALUE = 1'b0;
    defparam \bram_addr_a[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/acc[1]~FF  (.D(\u_bram_ctrl/n99 [1]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/acc [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \u_bram_ctrl/acc[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/acc[1]~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[1]~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/acc[1]~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/acc[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/acc[2]~FF  (.D(\u_bram_ctrl/n99 [2]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/acc [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \u_bram_ctrl/acc[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/acc[2]~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[2]~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/acc[2]~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/acc[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/acc[3]~FF  (.D(\u_bram_ctrl/n99 [3]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/acc [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \u_bram_ctrl/acc[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/acc[3]~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[3]~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/acc[3]~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/acc[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/acc[4]~FF  (.D(\u_bram_ctrl/n99 [4]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/acc [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \u_bram_ctrl/acc[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/acc[4]~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[4]~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/acc[4]~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/acc[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_bram_ctrl/acc[5]~FF  (.D(\u_bram_ctrl/n99 [5]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(sys_rst_n_lvds), .Q(\u_bram_ctrl/acc [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam \u_bram_ctrl/acc[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_bram_ctrl/acc[5]~FF .D_POLARITY = 1'b1;
    defparam \u_bram_ctrl/acc[5]~FF .SR_SYNC = 1'b0;
    defparam \u_bram_ctrl/acc[5]~FF .SR_VALUE = 1'b0;
    defparam \u_bram_ctrl/acc[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__888 (.I0(\u_reset_gen_adc/reset_counter [3]), .I1(\u_reset_gen_adc/reset_counter [4]), 
            .I2(\u_reset_gen_adc/reset_counter [5]), .I3(\u_reset_gen_adc/reset_counter [6]), 
            .O(n359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__888.LUTMASK = 16'h8000;
    EFX_FF \u_lcd_lvds/v_cnt[0]~FF  (.D(\u_lcd_lvds/n21 [0]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/data_en~FF  (.D(\u_lcd_lvds/n114 ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(1'b0), .Q(\u_lcd_lvds/data_en )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(68)
    defparam \u_lcd_lvds/data_en~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/data_en~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[0]~FF  (.D(\u_lcd_lvds/h_cnt [0]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[1]~FF  (.D(\u_lcd_lvds/n21 [1]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[2]~FF  (.D(\u_lcd_lvds/n21 [2]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[3]~FF  (.D(\u_lcd_lvds/n21 [3]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[3]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[4]~FF  (.D(\u_lcd_lvds/n21 [4]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[4]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[5]~FF  (.D(\u_lcd_lvds/n21 [5]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[5]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[6]~FF  (.D(\u_lcd_lvds/n21 [6]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[6]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[7]~FF  (.D(\u_lcd_lvds/n21 [7]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[7]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[8]~FF  (.D(\u_lcd_lvds/n21 [8]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[8]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[8]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[9]~FF  (.D(\u_lcd_lvds/n21 [9]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[9]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[9]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[10]~FF  (.D(\u_lcd_lvds/n21 [10]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[10]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[10]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/v_cnt[11]~FF  (.D(\u_lcd_lvds/n21 [11]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[11]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[11]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \lvds_tx0_DATA[7]~FF  (.D(\u_lcd_lvds/equal_33/n63 ), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/data_en ), .Q(lvds_tx0_DATA[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(95)
    defparam \lvds_tx0_DATA[7]~FF .CLK_POLARITY = 1'b1;
    defparam \lvds_tx0_DATA[7]~FF .CE_POLARITY = 1'b1;
    defparam \lvds_tx0_DATA[7]~FF .SR_POLARITY = 1'b0;
    defparam \lvds_tx0_DATA[7]~FF .D_POLARITY = 1'b0;
    defparam \lvds_tx0_DATA[7]~FF .SR_SYNC = 1'b1;
    defparam \lvds_tx0_DATA[7]~FF .SR_VALUE = 1'b0;
    defparam \lvds_tx0_DATA[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \lvds_tx1_DATA[7]~FF  (.D(\u_lcd_lvds/equal_36/n63 ), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/data_en ), .Q(lvds_tx1_DATA[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(95)
    defparam \lvds_tx1_DATA[7]~FF .CLK_POLARITY = 1'b1;
    defparam \lvds_tx1_DATA[7]~FF .CE_POLARITY = 1'b1;
    defparam \lvds_tx1_DATA[7]~FF .SR_POLARITY = 1'b0;
    defparam \lvds_tx1_DATA[7]~FF .D_POLARITY = 1'b0;
    defparam \lvds_tx1_DATA[7]~FF .SR_SYNC = 1'b1;
    defparam \lvds_tx1_DATA[7]~FF .SR_VALUE = 1'b0;
    defparam \lvds_tx1_DATA[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[1]~FF  (.D(\u_lcd_lvds/n35 [1]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[2]~FF  (.D(\u_lcd_lvds/n35 [2]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[3]~FF  (.D(\u_lcd_lvds/n35 [3]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[4]~FF  (.D(\u_lcd_lvds/n35 [4]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[5]~FF  (.D(\u_lcd_lvds/n35 [5]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[6]~FF  (.D(\u_lcd_lvds/n35 [6]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[7]~FF  (.D(\u_lcd_lvds/n35 [7]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[8]~FF  (.D(\u_lcd_lvds/n35 [8]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[9]~FF  (.D(\u_lcd_lvds/n35 [9]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[10]~FF  (.D(\u_lcd_lvds/n35 [10]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[10]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/h_cnt[11]~FF  (.D(\u_lcd_lvds/n35 [11]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/equal_4/n23 ), .Q(\u_lcd_lvds/h_cnt [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/h_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[11]~FF .SR_POLARITY = 1'b0;
    defparam \u_lcd_lvds/h_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/h_cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/h_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/h_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i2  (.I0(\u_lcd_lvds/v_cnt [2]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n2 ), .O(\u_lcd_lvds/n8 [2]), .CO(\u_lcd_lvds/add_55/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i2 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i1  (.I0(\u_reset_gen_lvds/reset_counter [1]), 
            .I1(\u_reset_gen_lvds/reset_counter [0]), .CI(1'b0), .O(\u_reset_gen_lvds/n7 [1]), 
            .CO(\u_reset_gen_lvds/add_13/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i1 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i10  (.I0(bram_addr_a[10]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n18 ), 
            .O(\u_bram_ctrl/n8 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i10 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i9  (.I0(bram_addr_a[9]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n16 ), 
            .O(\u_bram_ctrl/n8 [9]), .CO(\u_bram_ctrl/add_47/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i9 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i8  (.I0(bram_addr_a[8]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n14 ), 
            .O(\u_bram_ctrl/n8 [8]), .CO(\u_bram_ctrl/add_47/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i8 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i7  (.I0(bram_addr_a[7]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n12 ), 
            .O(\u_bram_ctrl/n8 [7]), .CO(\u_bram_ctrl/add_47/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i7 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i6  (.I0(bram_addr_a[6]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n10 ), 
            .O(\u_bram_ctrl/n8 [6]), .CO(\u_bram_ctrl/add_47/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i6 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i1  (.I0(bram_addr_b[0]), .I1(\u_bram_ctrl/double_step ), 
            .CI(1'b0), .O(\u_bram_ctrl/n77 [0]), .CO(\u_bram_ctrl/add_31/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i1 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \u_bram_ctrl/add_47/i5  (.I0(bram_addr_a[5]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n8 ), 
            .O(\u_bram_ctrl/n8 [5]), .CO(\u_bram_ctrl/add_47/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i5 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i4  (.I0(bram_addr_a[4]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n6 ), 
            .O(\u_bram_ctrl/n8 [4]), .CO(\u_bram_ctrl/add_47/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i4 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i3  (.I0(bram_addr_a[3]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n4 ), 
            .O(\u_bram_ctrl/n8 [3]), .CO(\u_bram_ctrl/add_47/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i3 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i2  (.I0(bram_addr_a[2]), .I1(1'b0), .CI(\u_bram_ctrl/add_47/n2 ), 
            .O(\u_bram_ctrl/n8 [2]), .CO(\u_bram_ctrl/add_47/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i2 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i10  (.I0(bram_addr_b[9]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n18 ), 
            .O(\u_bram_ctrl/n77 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i10 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i11  (.I0(\u_reset_gen_lvds/reset_counter [11]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n20 ), .O(\u_reset_gen_lvds/n7 [11]), 
            .CO(\u_reset_gen_lvds/add_13/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i11 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_47/i1  (.I0(bram_addr_a[1]), .I1(bram_addr_a[0]), 
            .CI(1'b0), .O(\u_bram_ctrl/n8 [1]), .CO(\u_bram_ctrl/add_47/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(41)
    defparam \u_bram_ctrl/add_47/i1 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_47/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i9  (.I0(bram_addr_b[8]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n16 ), 
            .O(\u_bram_ctrl/n77 [8]), .CO(\u_bram_ctrl/add_31/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i9 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i1  (.I0(\u_lcd_lvds/v_cnt [1]), .I1(\u_lcd_lvds/v_cnt [0]), 
            .CI(1'b0), .O(\u_lcd_lvds/n8 [1]), .CO(\u_lcd_lvds/add_55/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i1 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i4  (.I0(\u_lcd_lvds/v_cnt [4]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n6 ), .O(\u_lcd_lvds/n8 [4]), .CO(\u_lcd_lvds/add_55/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i4 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i3  (.I0(\u_lcd_lvds/v_cnt [3]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n4 ), .O(\u_lcd_lvds/n8 [3]), .CO(\u_lcd_lvds/add_55/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i3 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i1  (.I0(\u_lcd_lvds/h_cnt [1]), .I1(\u_lcd_lvds/h_cnt [0]), 
            .CI(1'b0), .O(\u_lcd_lvds/n35 [1]), .CO(\u_lcd_lvds/add_57/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i1 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i10  (.I0(\u_reset_gen_lvds/reset_counter [10]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n18 ), .O(\u_reset_gen_lvds/n7 [10]), 
            .CO(\u_reset_gen_lvds/add_13/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i10 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i9  (.I0(\u_reset_gen_lvds/reset_counter [9]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n16 ), .O(\u_reset_gen_lvds/n7 [9]), 
            .CO(\u_reset_gen_lvds/add_13/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i9 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i5  (.I0(\u_lcd_lvds/v_cnt [5]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n8 ), .O(\u_lcd_lvds/n8 [5]), .CO(\u_lcd_lvds/add_55/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i5 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i8  (.I0(\u_reset_gen_lvds/reset_counter [8]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n14 ), .O(\u_reset_gen_lvds/n7 [8]), 
            .CO(\u_reset_gen_lvds/add_13/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i8 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i8  (.I0(bram_addr_b[7]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n14 ), 
            .O(\u_bram_ctrl/n77 [7]), .CO(\u_bram_ctrl/add_31/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i8 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i7  (.I0(bram_addr_b[6]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n12 ), 
            .O(\u_bram_ctrl/n77 [6]), .CO(\u_bram_ctrl/add_31/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i7 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i6  (.I0(bram_addr_b[5]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n10 ), 
            .O(\u_bram_ctrl/n77 [5]), .CO(\u_bram_ctrl/add_31/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i6 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i4  (.I0(\u_lcd_lvds/h_cnt [4]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n6 ), .O(\u_lcd_lvds/n35 [4]), .CO(\u_lcd_lvds/add_57/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i4 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i3  (.I0(\u_lcd_lvds/h_cnt [3]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n4 ), .O(\u_lcd_lvds/n35 [3]), .CO(\u_lcd_lvds/add_57/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i3 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i2  (.I0(\u_lcd_lvds/h_cnt [2]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n2 ), .O(\u_lcd_lvds/n35 [2]), .CO(\u_lcd_lvds/add_57/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i2 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i11  (.I0(\u_lcd_lvds/v_cnt [11]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n20 ), .O(\u_lcd_lvds/n8 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i11 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i10  (.I0(\u_lcd_lvds/v_cnt [10]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n18 ), .O(\u_lcd_lvds/n8 [10]), .CO(\u_lcd_lvds/add_55/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i10 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i9  (.I0(\u_lcd_lvds/v_cnt [9]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n16 ), .O(\u_lcd_lvds/n8 [9]), .CO(\u_lcd_lvds/add_55/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i9 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i8  (.I0(\u_lcd_lvds/v_cnt [8]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n14 ), .O(\u_lcd_lvds/n8 [8]), .CO(\u_lcd_lvds/add_55/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i8 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i7  (.I0(\u_lcd_lvds/v_cnt [7]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n12 ), .O(\u_lcd_lvds/n8 [7]), .CO(\u_lcd_lvds/add_55/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i7 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_55/i6  (.I0(\u_lcd_lvds/v_cnt [6]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_55/n10 ), .O(\u_lcd_lvds/n8 [6]), .CO(\u_lcd_lvds/add_55/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_55/i6 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_55/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i5  (.I0(bram_addr_b[4]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n8 ), 
            .O(\u_bram_ctrl/n77 [4]), .CO(\u_bram_ctrl/add_31/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i5 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i7  (.I0(\u_reset_gen_lvds/reset_counter [7]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n12 ), .O(\u_reset_gen_lvds/n7 [7]), 
            .CO(\u_reset_gen_lvds/add_13/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i7 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i6  (.I0(\u_reset_gen_lvds/reset_counter [6]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n10 ), .O(\u_reset_gen_lvds/n7 [6]), 
            .CO(\u_reset_gen_lvds/add_13/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i6 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i5  (.I0(\u_reset_gen_lvds/reset_counter [5]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n8 ), .O(\u_reset_gen_lvds/n7 [5]), 
            .CO(\u_reset_gen_lvds/add_13/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i5 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i4  (.I0(\u_reset_gen_lvds/reset_counter [4]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n6 ), .O(\u_reset_gen_lvds/n7 [4]), 
            .CO(\u_reset_gen_lvds/add_13/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i4 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i3  (.I0(\u_reset_gen_lvds/reset_counter [3]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n4 ), .O(\u_reset_gen_lvds/n7 [3]), 
            .CO(\u_reset_gen_lvds/add_13/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i3 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i2  (.I0(\u_reset_gen_lvds/reset_counter [2]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n2 ), .O(\u_reset_gen_lvds/n7 [2]), 
            .CO(\u_reset_gen_lvds/add_13/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i2 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i15  (.I0(\u_reset_gen_adc/reset_counter [15]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n28 ), .O(\u_reset_gen_adc/n7 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i15 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i14  (.I0(\u_reset_gen_adc/reset_counter [14]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n26 ), .O(\u_reset_gen_adc/n7 [14]), 
            .CO(\u_reset_gen_adc/add_13/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i14 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i13  (.I0(\u_reset_gen_adc/reset_counter [13]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n24 ), .O(\u_reset_gen_adc/n7 [13]), 
            .CO(\u_reset_gen_adc/add_13/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i13 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i12  (.I0(\u_reset_gen_adc/reset_counter [12]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n22 ), .O(\u_reset_gen_adc/n7 [12]), 
            .CO(\u_reset_gen_adc/add_13/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i12 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i11  (.I0(\u_reset_gen_adc/reset_counter [11]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n20 ), .O(\u_reset_gen_adc/n7 [11]), 
            .CO(\u_reset_gen_adc/add_13/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i11 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i10  (.I0(\u_reset_gen_adc/reset_counter [10]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n18 ), .O(\u_reset_gen_adc/n7 [10]), 
            .CO(\u_reset_gen_adc/add_13/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i10 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i9  (.I0(\u_reset_gen_adc/reset_counter [9]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n16 ), .O(\u_reset_gen_adc/n7 [9]), 
            .CO(\u_reset_gen_adc/add_13/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i9 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i4  (.I0(bram_addr_b[3]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n6 ), 
            .O(\u_bram_ctrl/n77 [3]), .CO(\u_bram_ctrl/add_31/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i4 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i8  (.I0(\u_reset_gen_adc/reset_counter [8]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n14 ), .O(\u_reset_gen_adc/n7 [8]), 
            .CO(\u_reset_gen_adc/add_13/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i8 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i7  (.I0(\u_reset_gen_adc/reset_counter [7]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n12 ), .O(\u_reset_gen_adc/n7 [7]), 
            .CO(\u_reset_gen_adc/add_13/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i7 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i3  (.I0(bram_addr_b[2]), .I1(1'b0), .CI(\u_bram_ctrl/add_31/n4 ), 
            .O(\u_bram_ctrl/n77 [2]), .CO(\u_bram_ctrl/add_31/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i3 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i11  (.I0(\u_lcd_lvds/h_cnt [11]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n20 ), .O(\u_lcd_lvds/n35 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i11 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i10  (.I0(\u_lcd_lvds/h_cnt [10]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n18 ), .O(\u_lcd_lvds/n35 [10]), .CO(\u_lcd_lvds/add_57/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i10 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i9  (.I0(\u_lcd_lvds/h_cnt [9]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n16 ), .O(\u_lcd_lvds/n35 [9]), .CO(\u_lcd_lvds/add_57/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i9 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i8  (.I0(\u_lcd_lvds/h_cnt [8]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n14 ), .O(\u_lcd_lvds/n35 [8]), .CO(\u_lcd_lvds/add_57/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i8 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i7  (.I0(\u_lcd_lvds/h_cnt [7]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n12 ), .O(\u_lcd_lvds/n35 [7]), .CO(\u_lcd_lvds/add_57/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i7 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i6  (.I0(\u_lcd_lvds/h_cnt [6]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n10 ), .O(\u_lcd_lvds/n35 [6]), .CO(\u_lcd_lvds/add_57/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i6 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_57/i5  (.I0(\u_lcd_lvds/h_cnt [5]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_57/n8 ), .O(\u_lcd_lvds/n35 [5]), .CO(\u_lcd_lvds/add_57/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_57/i5 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_57/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i6  (.I0(\u_reset_gen_adc/reset_counter [6]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n10 ), .O(\u_reset_gen_adc/n7 [6]), 
            .CO(\u_reset_gen_adc/add_13/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i6 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i5  (.I0(\u_reset_gen_adc/reset_counter [5]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n8 ), .O(\u_reset_gen_adc/n7 [5]), 
            .CO(\u_reset_gen_adc/add_13/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i5 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i4  (.I0(\u_reset_gen_adc/reset_counter [4]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n6 ), .O(\u_reset_gen_adc/n7 [4]), 
            .CO(\u_reset_gen_adc/add_13/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i4 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i3  (.I0(\u_reset_gen_adc/reset_counter [3]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n4 ), .O(\u_reset_gen_adc/n7 [3]), 
            .CO(\u_reset_gen_adc/add_13/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i3 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i2  (.I0(\u_reset_gen_adc/reset_counter [2]), 
            .I1(1'b0), .CI(\u_reset_gen_adc/add_13/n2 ), .O(\u_reset_gen_adc/n7 [2]), 
            .CO(\u_reset_gen_adc/add_13/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i2 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_adc/add_13/i1  (.I0(\u_reset_gen_adc/reset_counter [1]), 
            .I1(\u_reset_gen_adc/reset_counter [0]), .CI(1'b0), .O(\u_reset_gen_adc/n7 [1]), 
            .CO(\u_reset_gen_adc/add_13/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_adc/add_13/i1 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_adc/add_13/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \u_bram_ctrl/add_31/i2  (.I0(bram_addr_b[1]), .I1(\u_bram_ctrl/double_step ), 
            .CI(\u_bram_ctrl/add_31/n2 ), .O(\u_bram_ctrl/n77 [1]), .CO(\u_bram_ctrl/add_31/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(82)
    defparam \u_bram_ctrl/add_31/i2 .I0_POLARITY = 1'b1;
    defparam \u_bram_ctrl/add_31/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i15  (.I0(\u_reset_gen_lvds/reset_counter [15]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n28 ), .O(\u_reset_gen_lvds/n7 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i15 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i14  (.I0(\u_reset_gen_lvds/reset_counter [14]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n26 ), .O(\u_reset_gen_lvds/n7 [14]), 
            .CO(\u_reset_gen_lvds/add_13/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i14 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i13  (.I0(\u_reset_gen_lvds/reset_counter [13]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n24 ), .O(\u_reset_gen_lvds/n7 [13]), 
            .CO(\u_reset_gen_lvds/add_13/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i13 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \u_reset_gen_lvds/add_13/i12  (.I0(\u_reset_gen_lvds/reset_counter [12]), 
            .I1(1'b0), .CI(\u_reset_gen_lvds/add_13/n22 ), .O(\u_reset_gen_lvds/n7 [12]), 
            .CO(\u_reset_gen_lvds/add_13/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(16)
    defparam \u_reset_gen_lvds/add_13/i12 .I0_POLARITY = 1'b1;
    defparam \u_reset_gen_lvds/add_13/i12 .I1_POLARITY = 1'b1;
    EFX_DPRAM_5K \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k  (.CLKA(\adc_clk_60M~O ), 
            .CLKB(\lvds_parallel_clk~O ), .WEA(1'b1), .WEB(1'b0), .CLKEA(1'b1), 
            .CLKEB(1'b1), .WDATAA({adc_data_out[13:12]}), .ADDRA({bram_addr_a}), 
            .ADDRB({\bram_addr_b[10] , bram_addr_b[9:0]}), .RDATAB({\bram_data_out[13] , 
            \bram_data_out[12] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_STF_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKEA_POLARITY=1'b1, WEA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, RESET_RAM_A="ASYNC", RESET_RAM_B="ASYNC", RESET_OUTREG_A="ASYNC", RESET_OUTREG_B="ASYNC", PRESERVE_USER_INIT=1'b1 */ ;   // D:/_Document/Efinity_doc/project/Portascope\ip/BRAM\BRAM.v(827)
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .READ_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .READ_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .WRITE_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .WRITE_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .WRITE_MODE_A = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .WRITE_MODE_B = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .CLKA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .CLKB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .CLKEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .CLKEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .WEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .WEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_0 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_3 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_4 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_5 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_6 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_7 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_8 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_9 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_A = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_B = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_C = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_D = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_E = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_F = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_10 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_11 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_12 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .INIT_13 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .OUTPUT_REG_A = 1'b0;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[6].bram/genblk1.dpram5k .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k  (.CLKA(\adc_clk_60M~O ), 
            .CLKB(\lvds_parallel_clk~O ), .WEA(1'b1), .WEB(1'b0), .CLKEA(1'b1), 
            .CLKEB(1'b1), .WDATAA({adc_data_out[11:10]}), .ADDRA({bram_addr_a}), 
            .ADDRB({\bram_addr_b[10] , bram_addr_b[9:0]}), .RDATAB({\bram_data_out[11] , 
            \bram_data_out[10] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_STF_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKEA_POLARITY=1'b1, WEA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, RESET_RAM_A="ASYNC", RESET_RAM_B="ASYNC", RESET_OUTREG_A="ASYNC", RESET_OUTREG_B="ASYNC", PRESERVE_USER_INIT=1'b1 */ ;   // D:/_Document/Efinity_doc/project/Portascope\ip/BRAM\BRAM.v(827)
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .READ_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .READ_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .WRITE_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .WRITE_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .WRITE_MODE_A = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .WRITE_MODE_B = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .CLKA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .CLKB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .CLKEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .CLKEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .WEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .WEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_0 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_3 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_4 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_5 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_6 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_7 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_8 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_9 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_A = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_B = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_C = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_D = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_E = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_F = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_10 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_11 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_12 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .INIT_13 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .OUTPUT_REG_A = 1'b0;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[5].bram/genblk1.dpram5k .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k  (.CLKA(\adc_clk_60M~O ), 
            .CLKB(\lvds_parallel_clk~O ), .WEA(1'b1), .WEB(1'b0), .CLKEA(1'b1), 
            .CLKEB(1'b1), .WDATAA({adc_data_out[9:8]}), .ADDRA({bram_addr_a}), 
            .ADDRB({\bram_addr_b[10] , bram_addr_b[9:0]}), .RDATAB({\bram_data_out[9] , 
            \bram_data_out[8] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_STF_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKEA_POLARITY=1'b1, WEA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, RESET_RAM_A="ASYNC", RESET_RAM_B="ASYNC", RESET_OUTREG_A="ASYNC", RESET_OUTREG_B="ASYNC", PRESERVE_USER_INIT=1'b1 */ ;   // D:/_Document/Efinity_doc/project/Portascope\ip/BRAM\BRAM.v(827)
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .READ_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .READ_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .WRITE_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .WRITE_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .WRITE_MODE_A = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .WRITE_MODE_B = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .CLKA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .CLKB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .CLKEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .CLKEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .WEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .WEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_0 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_3 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_4 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_5 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_6 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_7 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_8 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_9 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_A = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_B = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_C = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_D = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_E = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_F = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_10 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_11 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_12 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .INIT_13 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .OUTPUT_REG_A = 1'b0;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[4].bram/genblk1.dpram5k .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k  (.CLKA(\adc_clk_60M~O ), 
            .CLKB(\lvds_parallel_clk~O ), .WEA(1'b1), .WEB(1'b0), .CLKEA(1'b1), 
            .CLKEB(1'b1), .WDATAA({adc_data_out[7:6]}), .ADDRA({bram_addr_a}), 
            .ADDRB({\bram_addr_b[10] , bram_addr_b[9:0]}), .RDATAB({\bram_data_out[7] , 
            \bram_data_out[6] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_STF_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKEA_POLARITY=1'b1, WEA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, RESET_RAM_A="ASYNC", RESET_RAM_B="ASYNC", RESET_OUTREG_A="ASYNC", RESET_OUTREG_B="ASYNC", PRESERVE_USER_INIT=1'b1 */ ;   // D:/_Document/Efinity_doc/project/Portascope\ip/BRAM\BRAM.v(827)
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .READ_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .READ_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .WRITE_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .WRITE_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .WRITE_MODE_A = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .WRITE_MODE_B = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .CLKA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .CLKB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .CLKEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .CLKEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .WEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .WEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_0 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_3 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_4 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_5 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_6 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_7 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_8 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_9 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_A = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_B = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_C = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_D = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_E = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_F = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_10 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_11 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_12 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .INIT_13 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .OUTPUT_REG_A = 1'b0;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[3].bram/genblk1.dpram5k .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k  (.CLKA(\adc_clk_60M~O ), 
            .CLKB(\lvds_parallel_clk~O ), .WEA(1'b1), .WEB(1'b0), .CLKEA(1'b1), 
            .CLKEB(1'b1), .WDATAA({adc_data_out[5:4]}), .ADDRA({bram_addr_a}), 
            .ADDRB({\bram_addr_b[10] , bram_addr_b[9:0]}), .RDATAB({\bram_data_out[5] , 
            \bram_data_out[4] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_STF_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKEA_POLARITY=1'b1, WEA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, RESET_RAM_A="ASYNC", RESET_RAM_B="ASYNC", RESET_OUTREG_A="ASYNC", RESET_OUTREG_B="ASYNC", PRESERVE_USER_INIT=1'b1 */ ;   // D:/_Document/Efinity_doc/project/Portascope\ip/BRAM\BRAM.v(827)
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .READ_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .READ_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .WRITE_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .WRITE_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .WRITE_MODE_A = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .WRITE_MODE_B = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .CLKA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .CLKB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .CLKEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .CLKEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .WEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .WEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_0 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_3 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_4 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_5 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_6 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_7 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_8 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_9 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_A = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_B = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_C = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_D = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_E = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_F = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_10 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_11 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_12 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .INIT_13 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .OUTPUT_REG_A = 1'b0;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[2].bram/genblk1.dpram5k .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k  (.CLKA(\adc_clk_60M~O ), 
            .CLKB(\lvds_parallel_clk~O ), .WEA(1'b1), .WEB(1'b0), .CLKEA(1'b1), 
            .CLKEB(1'b1), .WDATAA({adc_data_out[3:2]}), .ADDRA({bram_addr_a}), 
            .ADDRB({\bram_addr_b[10] , bram_addr_b[9:0]}), .RDATAB({\bram_data_out[3] , 
            \bram_data_out[2] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_STF_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKEA_POLARITY=1'b1, WEA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, RESET_RAM_A="ASYNC", RESET_RAM_B="ASYNC", RESET_OUTREG_A="ASYNC", RESET_OUTREG_B="ASYNC", PRESERVE_USER_INIT=1'b1 */ ;   // D:/_Document/Efinity_doc/project/Portascope\ip/BRAM\BRAM.v(827)
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .READ_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .READ_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .WRITE_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .WRITE_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .WRITE_MODE_A = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .WRITE_MODE_B = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .CLKA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .CLKB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .CLKEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .CLKEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .WEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .WEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_0 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_3 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_4 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_5 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_6 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_7 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_8 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_9 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_A = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_B = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_C = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_D = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_E = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_F = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_10 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_11 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_12 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .INIT_13 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .OUTPUT_REG_A = 1'b0;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[1].bram/genblk1.dpram5k .OUTPUT_REG_B = 1'b0;
    EFX_DPRAM_5K \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k  (.CLKA(\adc_clk_60M~O ), 
            .CLKB(\lvds_parallel_clk~O ), .WEA(1'b1), .WEB(1'b0), .CLKEA(1'b1), 
            .CLKEB(1'b1), .WDATAA({adc_data_out[1:0]}), .ADDRA({bram_addr_a}), 
            .ADDRB({\bram_addr_b[10] , bram_addr_b[9:0]}), .RDATAB({\bram_data_out[1] , 
            \bram_data_out[0] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_STF_DPRAM_5K=TRUE, READ_WIDTH_A=2, READ_WIDTH_B=2, WRITE_WIDTH_A=2, WRITE_WIDTH_B=2, CLKA_POLARITY=1'b1, CLKEA_POLARITY=1'b1, WEA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, RESET_RAM_A="ASYNC", RESET_RAM_B="ASYNC", RESET_OUTREG_A="ASYNC", RESET_OUTREG_B="ASYNC", PRESERVE_USER_INIT=1'b1 */ ;   // D:/_Document/Efinity_doc/project/Portascope\ip/BRAM\BRAM.v(827)
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .READ_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .READ_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .WRITE_WIDTH_A = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .WRITE_WIDTH_B = 2;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .WRITE_MODE_A = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .WRITE_MODE_B = "READ_FIRST";
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .CLKA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .CLKB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .CLKEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .CLKEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .WEA_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .WEB_POLARITY = 1'b1;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_0 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_3 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_4 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_5 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_6 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_7 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_8 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_9 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_A = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_B = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_C = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_D = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_E = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_F = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_10 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_11 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_12 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .INIT_13 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .OUTPUT_REG_A = 1'b0;
    defparam \u_BRAM/u_efx_bram/genblk1.tdpram_inst/brams/scan_row.row[0].column[0].bram/genblk1.dpram5k .OUTPUT_REG_B = 1'b0;
    EFX_MULT \u_lcd_lvds/mult_30  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({4'b0000, 
            \bram_data_out[13] , \bram_data_out[12] , \bram_data_out[11] , 
            \bram_data_out[10] , \bram_data_out[9] , \bram_data_out[8] , 
            \bram_data_out[7] , \bram_data_out[6] , \bram_data_out[5] , 
            \bram_data_out[4] , \bram_data_out[3] , \bram_data_out[2] , 
            \bram_data_out[1] , \bram_data_out[0] }), .B({18'b000000000001001011}), 
            .O({Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, 
            Open_6, Open_7, Open_8, Open_9, Open_10, Open_11, Open_12, 
            Open_13, Open_14, \u_lcd_lvds/wave_y_b[9] , \u_lcd_lvds/wave_y_b[8] , 
            \u_lcd_lvds/wave_y_b[7] , \u_lcd_lvds/wave_y_b[6] , \u_lcd_lvds/wave_y_b[5] , 
            \u_lcd_lvds/wave_y_b[4] , \u_lcd_lvds/wave_y_b[3] , \u_lcd_lvds/wave_y_b[2] , 
            \u_lcd_lvds/wave_y_b[1] , \u_lcd_lvds/wave_y_b[0] , Open_15, 
            Open_16, Open_17, Open_18, Open_19, Open_20, Open_21, 
            Open_22, Open_23, Open_24, Open_25})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(72)
    defparam \u_lcd_lvds/mult_30 .WIDTH = 18;
    defparam \u_lcd_lvds/mult_30 .A_REG = 1'b0;
    defparam \u_lcd_lvds/mult_30 .B_REG = 1'b0;
    defparam \u_lcd_lvds/mult_30 .O_REG = 1'b0;
    defparam \u_lcd_lvds/mult_30 .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/mult_30 .CEA_POLARITY = 1'b1;
    defparam \u_lcd_lvds/mult_30 .RSTA_POLARITY = 1'b1;
    defparam \u_lcd_lvds/mult_30 .RSTA_SYNC = 1'b0;
    defparam \u_lcd_lvds/mult_30 .RSTA_VALUE = 1'b0;
    defparam \u_lcd_lvds/mult_30 .CEB_POLARITY = 1'b1;
    defparam \u_lcd_lvds/mult_30 .RSTB_POLARITY = 1'b1;
    defparam \u_lcd_lvds/mult_30 .RSTB_SYNC = 1'b0;
    defparam \u_lcd_lvds/mult_30 .RSTB_VALUE = 1'b0;
    defparam \u_lcd_lvds/mult_30 .CEO_POLARITY = 1'b1;
    defparam \u_lcd_lvds/mult_30 .RSTO_POLARITY = 1'b1;
    defparam \u_lcd_lvds/mult_30 .RSTO_SYNC = 1'b0;
    defparam \u_lcd_lvds/mult_30 .RSTO_VALUE = 1'b0;
    defparam \u_lcd_lvds/mult_30 .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__889 (.I0(\u_reset_gen_adc/reset_counter [0]), .I1(\u_reset_gen_adc/reset_counter [1]), 
            .I2(\u_reset_gen_adc/reset_counter [2]), .I3(\u_reset_gen_adc/reset_counter [7]), 
            .O(n360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__889.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__890 (.I0(\u_reset_gen_adc/reset_counter [11]), .I1(\u_reset_gen_adc/reset_counter [12]), 
            .I2(\u_reset_gen_adc/reset_counter [13]), .I3(\u_reset_gen_adc/reset_counter [14]), 
            .O(n361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__890.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__891 (.I0(n358), .I1(n359), .I2(n360), .I3(n361), .O(\u_reset_gen_adc/n5 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(15)
    defparam LUT__891.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__892 (.I0(\u_bram_ctrl/acc [0]), .I1(\u_bram_ctrl/acc [1]), 
            .I2(\u_bram_ctrl/acc [2]), .O(n362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__892.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__893 (.I0(n362), .I1(\u_bram_ctrl/acc [3]), .I2(\u_bram_ctrl/acc [4]), 
            .O(n363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__893.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__894 (.I0(n363), .I1(\u_bram_ctrl/acc [5]), .O(\u_bram_ctrl/double_step )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(68)
    defparam LUT__894.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__895 (.I0(\u_reset_gen_lvds/reset_counter [8]), .I1(\u_reset_gen_lvds/reset_counter [9]), 
            .I2(\u_reset_gen_lvds/reset_counter [10]), .I3(\u_reset_gen_lvds/reset_counter [15]), 
            .O(n364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__895.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__896 (.I0(\u_reset_gen_lvds/reset_counter [3]), .I1(\u_reset_gen_lvds/reset_counter [4]), 
            .I2(\u_reset_gen_lvds/reset_counter [5]), .I3(\u_reset_gen_lvds/reset_counter [6]), 
            .O(n365)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__896.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__897 (.I0(\u_reset_gen_lvds/reset_counter [0]), .I1(\u_reset_gen_lvds/reset_counter [1]), 
            .I2(\u_reset_gen_lvds/reset_counter [2]), .I3(\u_reset_gen_lvds/reset_counter [7]), 
            .O(n366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__897.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__898 (.I0(\u_reset_gen_lvds/reset_counter [11]), .I1(\u_reset_gen_lvds/reset_counter [12]), 
            .I2(\u_reset_gen_lvds/reset_counter [13]), .I3(\u_reset_gen_lvds/reset_counter [14]), 
            .O(n367)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__898.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__899 (.I0(n364), .I1(n365), .I2(n366), .I3(n367), .O(\u_reset_gen_lvds/n5 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\auto_rst_n.v(15)
    defparam LUT__899.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__900 (.I0(\u_bram_ctrl/wr_idx_s1 ), .I1(\u_bram_ctrl/wr_idx_s2 ), 
            .O(n368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__900.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__901 (.I0(n368), .I1(\u_bram_ctrl/n77 [3]), .O(\u_bram_ctrl/n88 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__901.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__902 (.I0(n368), .I1(\u_bram_ctrl/n77 [2]), .O(\u_bram_ctrl/n88 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__902.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__903 (.I0(n368), .I1(\u_bram_ctrl/n77 [1]), .O(\u_bram_ctrl/n88 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__903.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__904 (.I0(n368), .I1(\u_bram_ctrl/n77 [0]), .O(\u_bram_ctrl/n88 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__904.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__905 (.I0(n368), .I1(\u_bram_ctrl/n77 [4]), .O(\u_bram_ctrl/n88 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__905.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__906 (.I0(n368), .I1(\u_bram_ctrl/n77 [5]), .O(\u_bram_ctrl/n88 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__906.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__907 (.I0(n368), .I1(\u_bram_ctrl/n77 [6]), .O(\u_bram_ctrl/n88 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__907.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__908 (.I0(n368), .I1(\u_bram_ctrl/n77 [7]), .O(\u_bram_ctrl/n88 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__908.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__909 (.I0(n368), .I1(\u_bram_ctrl/n77 [8]), .O(\u_bram_ctrl/n88 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__909.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__910 (.I0(n368), .I1(\u_bram_ctrl/n77 [9]), .O(\u_bram_ctrl/n88 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__910.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__911 (.I0(\u_bram_ctrl/acc [0]), .I1(n368), .O(\u_bram_ctrl/n99 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__911.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__912 (.I0(n368), .I1(\u_bram_ctrl/acc [1]), .I2(\u_bram_ctrl/acc [0]), 
            .O(\u_bram_ctrl/n99 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__912.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__913 (.I0(\u_bram_ctrl/acc [0]), .I1(\u_bram_ctrl/acc [1]), 
            .I2(n368), .I3(\u_bram_ctrl/acc [2]), .O(\u_bram_ctrl/n99 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__913.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__914 (.I0(n368), .I1(\u_bram_ctrl/acc [3]), .I2(n362), 
            .O(\u_bram_ctrl/n99 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__914.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__915 (.I0(n362), .I1(\u_bram_ctrl/acc [3]), .I2(n368), 
            .I3(\u_bram_ctrl/acc [4]), .O(\u_bram_ctrl/n99 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__915.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__916 (.I0(n368), .I1(n363), .I2(\u_bram_ctrl/acc [5]), 
            .O(\u_bram_ctrl/n99 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\bram\pp_pack_ctrl.v(84)
    defparam LUT__916.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__917 (.I0(\u_lcd_lvds/v_cnt [10]), .I1(\u_lcd_lvds/v_cnt [11]), 
            .I2(\u_lcd_lvds/v_cnt [4]), .O(n369)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__917.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__918 (.I0(n369), .I1(\u_lcd_lvds/v_cnt [1]), .I2(\u_lcd_lvds/v_cnt [3]), 
            .I3(\u_lcd_lvds/v_cnt [9]), .O(n370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__918.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__919 (.I0(\u_lcd_lvds/v_cnt [7]), .I1(\u_lcd_lvds/v_cnt [8]), 
            .O(n371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__919.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__920 (.I0(\u_lcd_lvds/v_cnt [0]), .I1(\u_lcd_lvds/v_cnt [2]), 
            .I2(\u_lcd_lvds/v_cnt [5]), .I3(\u_lcd_lvds/v_cnt [6]), .O(n372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__920.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__921 (.I0(n370), .I1(n371), .I2(n372), .O(n373)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__921.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__922 (.I0(n373), .I1(\u_lcd_lvds/v_cnt [0]), .O(\u_lcd_lvds/n21 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__922.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__923 (.I0(\u_lcd_lvds/h_cnt [7]), .I1(\u_lcd_lvds/h_cnt [9]), 
            .I2(\u_lcd_lvds/h_cnt [8]), .I3(\u_lcd_lvds/h_cnt [10]), .O(n374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__923.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__924 (.I0(\u_lcd_lvds/h_cnt [0]), .I1(\u_lcd_lvds/h_cnt [1]), 
            .I2(\u_lcd_lvds/h_cnt [2]), .I3(\u_lcd_lvds/h_cnt [5]), .O(n375)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__924.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__925 (.I0(\u_lcd_lvds/h_cnt [6]), .I1(\u_lcd_lvds/h_cnt [11]), 
            .I2(\u_lcd_lvds/h_cnt [3]), .I3(\u_lcd_lvds/h_cnt [4]), .O(n376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__925.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__926 (.I0(n374), .I1(n375), .I2(n376), .O(\u_lcd_lvds/equal_4/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(47)
    defparam LUT__926.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__927 (.I0(\u_lcd_lvds/v_cnt [2]), .I1(\u_lcd_lvds/v_cnt [0]), 
            .I2(\u_lcd_lvds/v_cnt [1]), .I3(\u_lcd_lvds/v_cnt [3]), .O(n377)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__927.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__928 (.I0(\u_lcd_lvds/v_cnt [5]), .I1(\u_lcd_lvds/v_cnt [6]), 
            .O(n378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__928.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__929 (.I0(n377), .I1(\u_lcd_lvds/v_cnt [4]), .I2(n378), 
            .O(n379)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__929.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__930 (.I0(\u_lcd_lvds/v_cnt [0]), .I1(\u_lcd_lvds/v_cnt [1]), 
            .I2(\u_lcd_lvds/v_cnt [2]), .O(n380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__930.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__931 (.I0(n380), .I1(\u_lcd_lvds/v_cnt [3]), .I2(\u_lcd_lvds/v_cnt [4]), 
            .O(n381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__931.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__932 (.I0(n381), .I1(\u_lcd_lvds/v_cnt [6]), .I2(\u_lcd_lvds/v_cnt [5]), 
            .I3(n371), .O(n382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__932.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__933 (.I0(\u_lcd_lvds/h_cnt [5]), .I1(\u_lcd_lvds/h_cnt [6]), 
            .I2(\u_lcd_lvds/h_cnt [7]), .O(n383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__933.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__934 (.I0(n383), .I1(\u_lcd_lvds/h_cnt [8]), .I2(\u_lcd_lvds/h_cnt [9]), 
            .I3(\u_lcd_lvds/h_cnt [10]), .O(n384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;
    defparam LUT__934.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__935 (.I0(\u_lcd_lvds/v_cnt [10]), .I1(\u_lcd_lvds/v_cnt [11]), 
            .I2(\u_lcd_lvds/h_cnt [11]), .I3(n384), .O(n385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__935.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__936 (.I0(n379), .I1(n382), .I2(\u_lcd_lvds/v_cnt [9]), 
            .I3(n385), .O(\u_lcd_lvds/n114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc700 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(67)
    defparam LUT__936.LUTMASK = 16'hc700;
    EFX_LUT4 LUT__937 (.I0(n373), .I1(\u_lcd_lvds/n8 [1]), .O(\u_lcd_lvds/n21 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__937.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__938 (.I0(n373), .I1(\u_lcd_lvds/n8 [2]), .O(\u_lcd_lvds/n21 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__938.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__939 (.I0(n373), .I1(\u_lcd_lvds/n8 [3]), .O(\u_lcd_lvds/n21 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__939.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__940 (.I0(n373), .I1(\u_lcd_lvds/n8 [4]), .O(\u_lcd_lvds/n21 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__940.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__941 (.I0(n373), .I1(\u_lcd_lvds/n8 [5]), .O(\u_lcd_lvds/n21 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__941.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__942 (.I0(n373), .I1(\u_lcd_lvds/n8 [6]), .O(\u_lcd_lvds/n21 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__942.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__943 (.I0(n373), .I1(\u_lcd_lvds/n8 [7]), .O(\u_lcd_lvds/n21 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__943.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__944 (.I0(n373), .I1(\u_lcd_lvds/n8 [8]), .O(\u_lcd_lvds/n21 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__944.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__945 (.I0(n373), .I1(\u_lcd_lvds/n8 [9]), .O(\u_lcd_lvds/n21 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__945.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__946 (.I0(n373), .I1(\u_lcd_lvds/n8 [10]), .O(\u_lcd_lvds/n21 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__946.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__947 (.I0(n373), .I1(\u_lcd_lvds/n8 [11]), .O(\u_lcd_lvds/n21 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__947.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__948 (.I0(\u_lcd_lvds/v_cnt [9]), .I1(n378), .I2(n371), 
            .O(n386)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__948.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__949 (.I0(\u_lcd_lvds/v_cnt [3]), .I1(n369), .I2(n380), 
            .I3(n386), .O(\u_lcd_lvds/equal_33/n63 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(77)
    defparam LUT__949.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__950 (.I0(n377), .I1(\u_lcd_lvds/v_cnt [4]), .I2(\u_lcd_lvds/v_cnt [7]), 
            .I3(n378), .O(n387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__950.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__951 (.I0(\u_lcd_lvds/v_cnt [9]), .I1(\u_lcd_lvds/wave_y_b[9] ), 
            .O(n388)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__951.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__952 (.I0(n388), .I1(n387), .I2(\u_lcd_lvds/v_cnt [8]), 
            .I3(\u_lcd_lvds/wave_y_b[8] ), .O(n389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7be */ ;
    defparam LUT__952.LUTMASK = 16'he7be;
    EFX_LUT4 LUT__953 (.I0(\u_lcd_lvds/v_cnt [7]), .I1(\u_lcd_lvds/wave_y_b[7] ), 
            .O(n390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__953.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__954 (.I0(n386), .I1(\u_lcd_lvds/v_cnt [10]), .I2(n390), 
            .I3(n379), .O(n391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6ffc */ ;
    defparam LUT__954.LUTMASK = 16'h6ffc;
    EFX_LUT4 LUT__955 (.I0(\u_lcd_lvds/v_cnt [5]), .I1(\u_lcd_lvds/wave_y_b[5] ), 
            .O(n392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__955.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__956 (.I0(n377), .I1(\u_lcd_lvds/wave_y_b[4] ), .I2(n392), 
            .I3(\u_lcd_lvds/v_cnt [4]), .O(n393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e9f */ ;
    defparam LUT__956.LUTMASK = 16'h7e9f;
    EFX_LUT4 LUT__957 (.I0(n377), .I1(\u_lcd_lvds/v_cnt [4]), .I2(\u_lcd_lvds/v_cnt [5]), 
            .O(n394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__957.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__958 (.I0(n393), .I1(n394), .I2(\u_lcd_lvds/v_cnt [6]), 
            .I3(\u_lcd_lvds/wave_y_b[6] ), .O(n395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1441 */ ;
    defparam LUT__958.LUTMASK = 16'h1441;
    EFX_LUT4 LUT__959 (.I0(\u_lcd_lvds/v_cnt [2]), .I1(\u_lcd_lvds/wave_y_b[2] ), 
            .O(n396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__959.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__960 (.I0(n396), .I1(\u_lcd_lvds/v_cnt [0]), .I2(\u_lcd_lvds/v_cnt [1]), 
            .I3(\u_lcd_lvds/wave_y_b[1] ), .O(n397)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heb7e */ ;
    defparam LUT__960.LUTMASK = 16'heb7e;
    EFX_LUT4 LUT__961 (.I0(\u_lcd_lvds/v_cnt [11]), .I1(\u_lcd_lvds/v_cnt [3]), 
            .I2(\u_lcd_lvds/wave_y_b[3] ), .I3(n380), .O(n398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4114 */ ;
    defparam LUT__961.LUTMASK = 16'h4114;
    EFX_LUT4 LUT__962 (.I0(n397), .I1(\u_lcd_lvds/v_cnt [0]), .I2(\u_lcd_lvds/wave_y_b[0] ), 
            .I3(n398), .O(n399)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__962.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__963 (.I0(n389), .I1(n391), .I2(n395), .I3(n399), .O(\u_lcd_lvds/equal_36/n63 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(82)
    defparam LUT__963.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__983 (.I0(\u_bram_ctrl/wr_idx_s2 ), .O(\bram_addr_b[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__983.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__1 (.CE(1'b1), .I(lvds_parallel_clk), .O(\lvds_parallel_clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__1.CE_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(adc_clk_60M), .O(\adc_clk_60M~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_364199c2_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_364199c2_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_364199c2_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_364199c2_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_364199c2__2_2_2_2_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_364199c2__2_2_2_2_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_364199c2__2_2_2_2_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_364199c2__2_2_2_2_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_364199c2__2_2_2_2_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_364199c2__2_2_2_2_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_364199c2__2_2_2_2_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_364199c2_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_364199c2_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_364199c2_0
// module not written out since it is a black box. 
//

