
//
// Verific Verilog Description of module Portascope
//

module Portascope (pll_adc_clk_in, pll_lvds_clk_in, adc_data_in, adc_clk_60M, 
            lvds_parallel_clk, lvds_serial_clk, lvds_tx0_DATA, lvds_tx1_DATA, 
            lvds_tx2_DATA, lvds_tx3_DATA);
    input pll_adc_clk_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(2)
    input pll_lvds_clk_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(3)
    input [13:0]adc_data_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(4)
    input adc_clk_60M /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(5)
    input lvds_parallel_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(6)
    input lvds_serial_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(7)
    output [7:0]lvds_tx0_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    output [7:0]lvds_tx1_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    output [7:0]lvds_tx2_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    output [7:0]lvds_tx3_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    
    wire [11:0]\u_lcd_lvds/n35 ;
    
    wire \u_lcd_lvds/add_63/n2 ;
    wire [11:0]\u_lcd_lvds/v_cnt ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(43)
    
    wire \u_lcd_lvds/hsync , \u_lcd_lvds/vsync , \u_lcd_lvds/data_en ;
    wire [11:0]\u_lcd_lvds/h_cnt ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(42)
    
    wire \u_lcd_lvds/add_63/n20 , \u_lcd_lvds/add_63/n18 , \u_lcd_lvds/add_63/n16 , 
        \u_lcd_lvds/add_63/n14 , \u_lcd_lvds/add_63/n12 , \u_lcd_lvds/add_63/n10 , 
        \u_lcd_lvds/add_63/n8 , \u_lcd_lvds/add_63/n6 , \u_lcd_lvds/add_63/n4 ;
    wire [11:0]\u_lcd_lvds/n8 ;
    
    wire \u_lcd_lvds/add_61/n20 , \u_lcd_lvds/add_61/n18 , \u_lcd_lvds/add_61/n16 , 
        \u_lcd_lvds/add_61/n14 , \u_lcd_lvds/add_61/n12 , \u_lcd_lvds/add_61/n10 , 
        \u_lcd_lvds/add_61/n8 , \u_lcd_lvds/add_61/n6 , \u_lcd_lvds/add_61/n4 , 
        \u_lcd_lvds/add_61/n2 ;
    wire [11:0]\u_lcd_lvds/n21 ;
    
    wire \lvds_parallel_clk~O , \u_lcd_lvds/equal_4/n23 , \u_lcd_lvds/n101 , 
        \u_lcd_lvds/n103 , \u_lcd_lvds/n114 ;
    wire [7:0]\u_lcd_lvds/test_r ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(79)
    
    wire \u_lcd_lvds/div_37/n435 , \u_lcd_lvds/n1783 , n142, n143, n144, 
        n145, n146, n147, n148, n149, n150, n151, n152, n153, 
        n154, n155, n156, n157, n158, n159, n160;
    
    assign lvds_tx0_DATA[7] = lvds_tx0_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    assign lvds_tx0_DATA[6] = lvds_tx0_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    assign lvds_tx0_DATA[5] = lvds_tx0_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    assign lvds_tx0_DATA[4] = lvds_tx0_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    assign lvds_tx0_DATA[3] = lvds_tx0_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    assign lvds_tx0_DATA[2] = lvds_tx0_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    assign lvds_tx0_DATA[1] = lvds_tx0_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(8)
    assign lvds_tx1_DATA[7] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx1_DATA[6] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx1_DATA[5] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx1_DATA[4] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx1_DATA[3] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx1_DATA[2] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx1_DATA[1] = lvds_tx1_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(9)
    assign lvds_tx2_DATA[7] = lvds_tx2_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx2_DATA[6] = lvds_tx2_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx2_DATA[5] = lvds_tx2_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx2_DATA[4] = lvds_tx2_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx2_DATA[3] = lvds_tx2_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx2_DATA[2] = lvds_tx2_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx2_DATA[1] = lvds_tx2_DATA[0] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(10)
    assign lvds_tx3_DATA[7] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx3_DATA[6] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx3_DATA[5] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx3_DATA[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx3_DATA[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, syn_peri_port=0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\main\Portascope.v(11)
    assign lvds_tx3_DATA[2] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__298 (.I0(\u_lcd_lvds/v_cnt [0]), .I1(\u_lcd_lvds/v_cnt [2]), 
            .I2(\u_lcd_lvds/v_cnt [1]), .I3(\u_lcd_lvds/v_cnt [3]), .O(n142)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__298.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__299 (.I0(\u_lcd_lvds/v_cnt [7]), .I1(\u_lcd_lvds/v_cnt [8]), 
            .I2(\u_lcd_lvds/v_cnt [10]), .I3(\u_lcd_lvds/v_cnt [11]), .O(n143)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__299.LUTMASK = 16'h0001;
    EFX_FF \u_lcd_lvds/v_cnt[0]~FF  (.D(\u_lcd_lvds/n21 [0]), .CE(\u_lcd_lvds/equal_4/n23 ), 
           .CLK(\lvds_parallel_clk~O ), .SR(1'b0), .Q(\u_lcd_lvds/v_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(56)
    defparam \u_lcd_lvds/v_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/v_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/hsync~FF  (.D(\u_lcd_lvds/n101 ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(1'b0), .Q(\u_lcd_lvds/hsync )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(62)
    defparam \u_lcd_lvds/hsync~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/hsync~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/hsync~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/hsync~FF .D_POLARITY = 1'b0;
    defparam \u_lcd_lvds/hsync~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/hsync~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/hsync~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/vsync~FF  (.D(\u_lcd_lvds/n103 ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(1'b0), .Q(\u_lcd_lvds/vsync )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(62)
    defparam \u_lcd_lvds/vsync~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/vsync~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/vsync~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/vsync~FF .D_POLARITY = 1'b0;
    defparam \u_lcd_lvds/vsync~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/vsync~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/vsync~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_lcd_lvds/data_en~FF  (.D(\u_lcd_lvds/n114 ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(1'b0), .Q(\u_lcd_lvds/data_en )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(68)
    defparam \u_lcd_lvds/data_en~FF .CLK_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .CE_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .SR_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .D_POLARITY = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .SR_SYNC = 1'b1;
    defparam \u_lcd_lvds/data_en~FF .SR_VALUE = 1'b0;
    defparam \u_lcd_lvds/data_en~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \lvds_tx3_DATA[0]~FF  (.D(\u_lcd_lvds/vsync ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(1'b0), .Q(lvds_tx3_DATA[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(108)
    defparam \lvds_tx3_DATA[0]~FF .CLK_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[0]~FF .CE_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[0]~FF .SR_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[0]~FF .D_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[0]~FF .SR_SYNC = 1'b1;
    defparam \lvds_tx3_DATA[0]~FF .SR_VALUE = 1'b0;
    defparam \lvds_tx3_DATA[0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \lvds_tx0_DATA[7]~FF  (.D(\u_lcd_lvds/test_r [1]), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/data_en ), .Q(lvds_tx0_DATA[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(108)
    defparam \lvds_tx0_DATA[7]~FF .CLK_POLARITY = 1'b1;
    defparam \lvds_tx0_DATA[7]~FF .CE_POLARITY = 1'b1;
    defparam \lvds_tx0_DATA[7]~FF .SR_POLARITY = 1'b0;
    defparam \lvds_tx0_DATA[7]~FF .D_POLARITY = 1'b1;
    defparam \lvds_tx0_DATA[7]~FF .SR_SYNC = 1'b1;
    defparam \lvds_tx0_DATA[7]~FF .SR_VALUE = 1'b0;
    defparam \lvds_tx0_DATA[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \lvds_tx1_DATA[7]~FF  (.D(\u_lcd_lvds/div_37/n435 ), .CE(1'b1), 
           .CLK(\lvds_parallel_clk~O ), .SR(\u_lcd_lvds/data_en ), .Q(lvds_tx1_DATA[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(108)
    defparam \lvds_tx1_DATA[7]~FF .CLK_POLARITY = 1'b1;
    defparam \lvds_tx1_DATA[7]~FF .CE_POLARITY = 1'b1;
    defparam \lvds_tx1_DATA[7]~FF .SR_POLARITY = 1'b0;
    defparam \lvds_tx1_DATA[7]~FF .D_POLARITY = 1'b1;
    defparam \lvds_tx1_DATA[7]~FF .SR_SYNC = 1'b1;
    defparam \lvds_tx1_DATA[7]~FF .SR_VALUE = 1'b0;
    defparam \lvds_tx1_DATA[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \lvds_tx2_DATA[7]~FF  (.D(\u_lcd_lvds/n1783 ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(\u_lcd_lvds/data_en ), .Q(lvds_tx2_DATA[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(108)
    defparam \lvds_tx2_DATA[7]~FF .CLK_POLARITY = 1'b1;
    defparam \lvds_tx2_DATA[7]~FF .CE_POLARITY = 1'b1;
    defparam \lvds_tx2_DATA[7]~FF .SR_POLARITY = 1'b0;
    defparam \lvds_tx2_DATA[7]~FF .D_POLARITY = 1'b1;
    defparam \lvds_tx2_DATA[7]~FF .SR_SYNC = 1'b1;
    defparam \lvds_tx2_DATA[7]~FF .SR_VALUE = 1'b0;
    defparam \lvds_tx2_DATA[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \lvds_tx3_DATA[1]~FF  (.D(\u_lcd_lvds/hsync ), .CE(1'b1), .CLK(\lvds_parallel_clk~O ), 
           .SR(1'b0), .Q(lvds_tx3_DATA[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(108)
    defparam \lvds_tx3_DATA[1]~FF .CLK_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[1]~FF .CE_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[1]~FF .SR_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[1]~FF .D_POLARITY = 1'b1;
    defparam \lvds_tx3_DATA[1]~FF .SR_SYNC = 1'b1;
    defparam \lvds_tx3_DATA[1]~FF .SR_VALUE = 1'b0;
    defparam \lvds_tx3_DATA[1]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_ADD \u_lcd_lvds/add_63/i1  (.I0(\u_lcd_lvds/h_cnt [1]), .I1(\u_lcd_lvds/h_cnt [0]), 
            .CI(1'b0), .O(\u_lcd_lvds/n35 [1]), .CO(\u_lcd_lvds/add_63/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i1 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i11  (.I0(\u_lcd_lvds/h_cnt [11]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n20 ), .O(\u_lcd_lvds/n35 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i11 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i10  (.I0(\u_lcd_lvds/h_cnt [10]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n18 ), .O(\u_lcd_lvds/n35 [10]), .CO(\u_lcd_lvds/add_63/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i10 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i9  (.I0(\u_lcd_lvds/h_cnt [9]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n16 ), .O(\u_lcd_lvds/n35 [9]), .CO(\u_lcd_lvds/add_63/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i9 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i8  (.I0(\u_lcd_lvds/h_cnt [8]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n14 ), .O(\u_lcd_lvds/n35 [8]), .CO(\u_lcd_lvds/add_63/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i8 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i7  (.I0(\u_lcd_lvds/h_cnt [7]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n12 ), .O(\u_lcd_lvds/n35 [7]), .CO(\u_lcd_lvds/add_63/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i7 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i6  (.I0(\u_lcd_lvds/h_cnt [6]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n10 ), .O(\u_lcd_lvds/n35 [6]), .CO(\u_lcd_lvds/add_63/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i6 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i5  (.I0(\u_lcd_lvds/h_cnt [5]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n8 ), .O(\u_lcd_lvds/n35 [5]), .CO(\u_lcd_lvds/add_63/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i5 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i4  (.I0(\u_lcd_lvds/h_cnt [4]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n6 ), .O(\u_lcd_lvds/n35 [4]), .CO(\u_lcd_lvds/add_63/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i4 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i3  (.I0(\u_lcd_lvds/h_cnt [3]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n4 ), .O(\u_lcd_lvds/n35 [3]), .CO(\u_lcd_lvds/add_63/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i3 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_63/i2  (.I0(\u_lcd_lvds/h_cnt [2]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_63/n2 ), .O(\u_lcd_lvds/n35 [2]), .CO(\u_lcd_lvds/add_63/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(54)
    defparam \u_lcd_lvds/add_63/i2 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_63/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i11  (.I0(\u_lcd_lvds/v_cnt [11]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n20 ), .O(\u_lcd_lvds/n8 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i11 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i10  (.I0(\u_lcd_lvds/v_cnt [10]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n18 ), .O(\u_lcd_lvds/n8 [10]), .CO(\u_lcd_lvds/add_61/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i10 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i9  (.I0(\u_lcd_lvds/v_cnt [9]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n16 ), .O(\u_lcd_lvds/n8 [9]), .CO(\u_lcd_lvds/add_61/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i9 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i8  (.I0(\u_lcd_lvds/v_cnt [8]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n14 ), .O(\u_lcd_lvds/n8 [8]), .CO(\u_lcd_lvds/add_61/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i8 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i7  (.I0(\u_lcd_lvds/v_cnt [7]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n12 ), .O(\u_lcd_lvds/n8 [7]), .CO(\u_lcd_lvds/add_61/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i7 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i6  (.I0(\u_lcd_lvds/v_cnt [6]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n10 ), .O(\u_lcd_lvds/n8 [6]), .CO(\u_lcd_lvds/add_61/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i6 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i5  (.I0(\u_lcd_lvds/v_cnt [5]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n8 ), .O(\u_lcd_lvds/n8 [5]), .CO(\u_lcd_lvds/add_61/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i5 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i4  (.I0(\u_lcd_lvds/v_cnt [4]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n6 ), .O(\u_lcd_lvds/n8 [4]), .CO(\u_lcd_lvds/add_61/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i4 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i3  (.I0(\u_lcd_lvds/v_cnt [3]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n4 ), .O(\u_lcd_lvds/n8 [3]), .CO(\u_lcd_lvds/add_61/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i3 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i2  (.I0(\u_lcd_lvds/v_cnt [2]), .I1(1'b0), 
            .CI(\u_lcd_lvds/add_61/n2 ), .O(\u_lcd_lvds/n8 [2]), .CO(\u_lcd_lvds/add_61/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i2 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_lcd_lvds/add_61/i1  (.I0(\u_lcd_lvds/v_cnt [1]), .I1(\u_lcd_lvds/v_cnt [0]), 
            .CI(1'b0), .O(\u_lcd_lvds/n8 [1]), .CO(\u_lcd_lvds/add_61/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam \u_lcd_lvds/add_61/i1 .I0_POLARITY = 1'b1;
    defparam \u_lcd_lvds/add_61/i1 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__300 (.I0(\u_lcd_lvds/v_cnt [5]), .I1(\u_lcd_lvds/v_cnt [6]), 
            .I2(\u_lcd_lvds/v_cnt [9]), .O(n144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__300.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__301 (.I0(n142), .I1(n143), .I2(n144), .I3(\u_lcd_lvds/v_cnt [4]), 
            .O(n145)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__301.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__302 (.I0(n145), .I1(\u_lcd_lvds/v_cnt [0]), .O(\u_lcd_lvds/n21 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__302.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__303 (.I0(\u_lcd_lvds/h_cnt [7]), .I1(\u_lcd_lvds/h_cnt [9]), 
            .I2(\u_lcd_lvds/h_cnt [11]), .O(n146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__303.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__304 (.I0(\u_lcd_lvds/h_cnt [6]), .I1(n146), .I2(\u_lcd_lvds/h_cnt [8]), 
            .I3(\u_lcd_lvds/h_cnt [10]), .O(n147)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__304.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__305 (.I0(\u_lcd_lvds/h_cnt [0]), .I1(\u_lcd_lvds/h_cnt [1]), 
            .I2(\u_lcd_lvds/h_cnt [2]), .I3(\u_lcd_lvds/h_cnt [5]), .O(n148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__305.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__306 (.I0(n147), .I1(n148), .I2(\u_lcd_lvds/h_cnt [3]), 
            .I3(\u_lcd_lvds/h_cnt [4]), .O(\u_lcd_lvds/equal_4/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(47)
    defparam LUT__306.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__307 (.I0(\u_lcd_lvds/h_cnt [2]), .I1(\u_lcd_lvds/h_cnt [3]), 
            .I2(\u_lcd_lvds/h_cnt [4]), .I3(n146), .O(n149)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__307.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__308 (.I0(\u_lcd_lvds/h_cnt [5]), .I1(\u_lcd_lvds/h_cnt [6]), 
            .I2(\u_lcd_lvds/h_cnt [8]), .I3(\u_lcd_lvds/h_cnt [10]), .O(n150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__308.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__309 (.I0(n149), .I1(n150), .O(\u_lcd_lvds/n101 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(60)
    defparam LUT__309.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__310 (.I0(\u_lcd_lvds/v_cnt [5]), .I1(\u_lcd_lvds/v_cnt [6]), 
            .I2(\u_lcd_lvds/v_cnt [9]), .O(n151)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__310.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__311 (.I0(\u_lcd_lvds/v_cnt [1]), .I1(\u_lcd_lvds/v_cnt [0]), 
            .I2(\u_lcd_lvds/v_cnt [2]), .I3(\u_lcd_lvds/v_cnt [3]), .O(n152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__311.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__312 (.I0(\u_lcd_lvds/v_cnt [4]), .I1(n151), .I2(n152), 
            .I3(n143), .O(\u_lcd_lvds/n103 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(61)
    defparam LUT__312.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__313 (.I0(\u_lcd_lvds/v_cnt [0]), .I1(\u_lcd_lvds/v_cnt [1]), 
            .I2(\u_lcd_lvds/v_cnt [2]), .I3(\u_lcd_lvds/v_cnt [3]), .O(n153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__313.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__314 (.I0(\u_lcd_lvds/v_cnt [4]), .I1(n153), .I2(n143), 
            .I3(n151), .O(n154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__314.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__315 (.I0(\u_lcd_lvds/v_cnt [0]), .I1(\u_lcd_lvds/v_cnt [1]), 
            .I2(\u_lcd_lvds/v_cnt [2]), .I3(\u_lcd_lvds/v_cnt [3]), .O(n155)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__315.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__316 (.I0(\u_lcd_lvds/v_cnt [4]), .I1(n155), .I2(n144), 
            .O(n156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__316.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__317 (.I0(\u_lcd_lvds/h_cnt [6]), .I1(\u_lcd_lvds/h_cnt [5]), 
            .I2(\u_lcd_lvds/h_cnt [7]), .O(n157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__317.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__318 (.I0(n157), .I1(\u_lcd_lvds/h_cnt [8]), .I2(\u_lcd_lvds/h_cnt [9]), 
            .I3(\u_lcd_lvds/h_cnt [10]), .O(n158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;
    defparam LUT__318.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__319 (.I0(\u_lcd_lvds/v_cnt [8]), .I1(\u_lcd_lvds/v_cnt [7]), 
            .I2(\u_lcd_lvds/v_cnt [9]), .I3(\u_lcd_lvds/h_cnt [11]), .O(n159)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__319.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__320 (.I0(\u_lcd_lvds/v_cnt [10]), .I1(\u_lcd_lvds/v_cnt [11]), 
            .I2(n159), .O(n160)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__320.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__321 (.I0(n154), .I1(n156), .I2(n158), .I3(n160), .O(\u_lcd_lvds/n114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(67)
    defparam LUT__321.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__322 (.I0(n145), .I1(\u_lcd_lvds/n8 [1]), .O(\u_lcd_lvds/n21 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__322.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__323 (.I0(n145), .I1(\u_lcd_lvds/n8 [2]), .O(\u_lcd_lvds/n21 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__323.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__324 (.I0(n145), .I1(\u_lcd_lvds/n8 [3]), .O(\u_lcd_lvds/n21 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__324.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__325 (.I0(n145), .I1(\u_lcd_lvds/n8 [4]), .O(\u_lcd_lvds/n21 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__325.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__326 (.I0(n145), .I1(\u_lcd_lvds/n8 [5]), .O(\u_lcd_lvds/n21 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__326.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__327 (.I0(n145), .I1(\u_lcd_lvds/n8 [6]), .O(\u_lcd_lvds/n21 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__327.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__328 (.I0(n145), .I1(\u_lcd_lvds/n8 [7]), .O(\u_lcd_lvds/n21 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__328.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__329 (.I0(n145), .I1(\u_lcd_lvds/n8 [8]), .O(\u_lcd_lvds/n21 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__329.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__330 (.I0(n145), .I1(\u_lcd_lvds/n8 [9]), .O(\u_lcd_lvds/n21 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__330.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__331 (.I0(n145), .I1(\u_lcd_lvds/n8 [10]), .O(\u_lcd_lvds/n21 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__331.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__332 (.I0(n145), .I1(\u_lcd_lvds/n8 [11]), .O(\u_lcd_lvds/n21 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(52)
    defparam LUT__332.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__333 (.I0(n157), .I1(\u_lcd_lvds/h_cnt [8]), .O(\u_lcd_lvds/test_r [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(76)
    defparam LUT__333.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__334 (.I0(n157), .I1(\u_lcd_lvds/h_cnt [8]), .I2(\u_lcd_lvds/h_cnt [9]), 
            .O(\u_lcd_lvds/div_37/n435 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(76)
    defparam LUT__334.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__335 (.I0(\u_lcd_lvds/h_cnt [5]), .I1(\u_lcd_lvds/h_cnt [6]), 
            .I2(\u_lcd_lvds/h_cnt [7]), .O(\u_lcd_lvds/n1783 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // D:\_Document\Efinity_doc\project\Portascope\src\lcd\lcd_lvds.v(76)
    defparam LUT__335.LUTMASK = 16'he1e1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(lvds_parallel_clk), .O(\lvds_parallel_clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_857dae90_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_857dae90_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_857dae90_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_857dae90_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_857dae90_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_857dae90_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_857dae90_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_857dae90_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_857dae90_0
// module not written out since it is a black box. 
//

