module Portascope (
    (* syn_peri_port = 0 *) input pll_adc_clk_in,
    (* syn_peri_port = 0 *) input pll_lvds_clk_in,
    (* syn_peri_port = 0 *) input [13:0] adc_data_in,
    (* syn_peri_port = 0 *) input adc_clk_60M,
    (* syn_peri_port = 0 *) input lvds_parallel_clk,  // 51.2MHz
    (* syn_peri_port = 0 *) input lvds_serial_clk,
    (* syn_peri_port = 0 *) output [7:0] lvds_tx0_DATA,
    (* syn_peri_port = 0 *) output [7:0] lvds_tx1_DATA,
    (* syn_peri_port = 0 *) output [7:0] lvds_tx2_DATA,
    (* syn_peri_port = 0 *) output [7:0] lvds_tx3_DATA
);

    localparam W  = 14;      // 单通道位宽
    localparam AW = 10;      // 半区地址宽

    // =========================================================================
    // 信号声明
    // =========================================================================
    wire sys_rst_n_adc;             // ADC时钟域的系统复位
    wire sys_rst_n_lvds;            // LVDS时钟域的系统复位
    wire sys_rst_n_VexRiscv;        // VexRiscv时钟域的系统复位

    wire [2*W-1:0] adc_data_out;    // 打包A/B通道采样数据
    wire [2*W-1:0] bram_data_out;   // BRAM读出数据
    wire [AW:0]    bram_addr_a;     // BRAM写地址
    wire [AW:0]    bram_addr_b;     // BRAM读地址
    wire signed [W-1:0] DATA_A;     // 解包A通道
    wire signed [W-1:0] DATA_B;     // 解包B通道

    // =========================================================================
    // 模块实例化
    // =========================================================================

    // ADC时钟域复位生成
    auto_rst_n u_reset_gen_adc (
        .clk(adc_clk_60M),
        .rst_sys_n(sys_rst_n_adc)
    );

    // LVDS时钟域复位生成
    auto_rst_n u_reset_gen_lvds (
        .clk(lvds_parallel_clk),
        .rst_sys_n(sys_rst_n_lvds)
    );

    // VexRiscv时钟域复位生成
    assign sys_rst_n_VexRiscv = sys_rst_n_lvds;

    // ADC数据采集与打包
    adc_capture u_adc_capture (
        .clk     (adc_clk_60M),
        .data_in (adc_data_in),
        .data_out(adc_data_out)
    );

    // BRAM地址控制、抽取与拆包
    pp_pack_ctrl #(
        .W  (W),
        .AW (AW)
    ) u_bram_ctrl (
        .wr_rst_n(sys_rst_n_adc),        // 使用ADC时钟域软件复位
        .rd_rst_n(sys_rst_n_lvds),       // 使用LVDS时钟域软件复位
        .wr_clk  (adc_clk_60M),
        .rd_clk  (lvds_parallel_clk),
        .wr_addr (bram_addr_a),
        .rd_addr (bram_addr_b),
        .rd_data (bram_data_out),
        .out_a   (DATA_A),
        .out_b   (DATA_B)
    );

    // 双口BRAM存储
    BRAM u_BRAM (
        .we_a    (1'b1),
        .we_b    (1'b0),
        .addr_a  (bram_addr_a),
        .addr_b  (bram_addr_b),
        .wdata_a (adc_data_out),
        .rdata_b (bram_data_out),
        .clk_a   (adc_clk_60M),
        .clk_b   (lvds_parallel_clk)
    );

    lcd_lvds u_lcd_lvds (
        .lvds_parallel_clk(lvds_parallel_clk),
        .lvds_serial_clk  (lvds_serial_clk),
        .data_a           (DATA_A),
        .data_b           (DATA_B),
        .lvds_tx0_DATA    (lvds_tx0_DATA),
        .lvds_tx1_DATA    (lvds_tx1_DATA),
        .lvds_tx2_DATA    (lvds_tx2_DATA),
        .lvds_tx3_DATA    (lvds_tx3_DATA)
    );

    VexRiscv u_VexRiscv (
        .iBus_cmd_valid(),
        .iBus_cmd_ready(),
        .iBus_cmd_payload_pc(),
        .iBus_rsp_valid(),
        .iBus_rsp_payload_error(),
        .iBus_rsp_payload_inst(),

        .timerInterrupt(),
        .externalInterrupt(),
        .softwareInterrupt(),

        .debug_bus_cmd_valid(),
        .debug_bus_cmd_ready(),
        .debug_bus_cmd_payload_wr(),
        .debug_bus_cmd_payload_address(),
        .debug_bus_cmd_payload_data(),
        .debug_bus_rsp_data(),
        .debug_resetOut(),

        .dBus_cmd_valid(),
        .dBus_cmd_ready(),
        .dBus_cmd_payload_wr(),
        .dBus_cmd_payload_mask(),
        .dBus_cmd_payload_address(),
        .dBus_cmd_payload_data(),
        .dBus_cmd_payload_size(),
        .dBus_rsp_ready(),
        .dBus_rsp_error(),
        .dBus_rsp_data(),

        .clk(lvds_parallel_clk),
        .reset(~sys_rst_n_VexRiscv),
        .debugReset(1'b0)
    );
endmodule
