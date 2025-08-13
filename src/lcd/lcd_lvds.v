// -----------------------------------------------------------------------------
// 模块名称：lcd_lvds
// 功能描述：
//   LVDS液晶屏驱动模块，产生行/场同步、数据使能信号，并输出测试彩条数据。
//   可根据实际需求替换为真实图像数据。
// 端口说明：
//   lvds_parallel_clk : 并行像素时钟
//   lvds_serial_clk   : LVDS串行时钟（未用，可扩展）
//   lvds_tx*_DATA     : LVDS通道输出数据（8位）
// -----------------------------------------------------------------------------

module lcd_lvds (
    input            lvds_parallel_clk,   // 并行像素时钟
    input            lvds_serial_clk,     // LVDS串行时钟
    input  [13:0]    data_a,
    input  [13:0]    data_b,
    output reg [7:0] lvds_tx0_DATA,       // LVDS通道0数据
    output reg [7:0] lvds_tx1_DATA,       // LVDS通道1数据
    output reg [7:0] lvds_tx2_DATA,       // LVDS通道2数据
    output reg [7:0] lvds_tx3_DATA        // LVDS通道3数据
);

    // 行/场同步及数据使能信号
    reg hsync;
    reg vsync;
    reg data_en;

    // ------------------- 屏参数定义（可根据实际屏幕调整） -------------------
    parameter H_SYNC   = 20;    // 行同步宽度
    parameter H_BACK   = 140;   // 行消隐（后沿）
    parameter H_ACTIVE = 1024;  // 行有效像素
    parameter H_FRONT  = 160;   // 行前沿
    parameter H_TOTAL  = 1344;  // 行总周期

    parameter V_SYNC   = 3;     // 场同步宽度
    parameter V_BACK   = 20;    // 场消隐（后沿）
    parameter V_ACTIVE = 600;   // 场有效行数
    parameter V_FRONT  = 12;    // 场前沿
    parameter V_TOTAL  = 635;   // 场总周期

    // ------------------- 行/列计数器 -------------------
    reg [11:0] h_cnt = 0;      // 行计数器
    reg [11:0] v_cnt = 0;      // 列计数器

    // 行计数递增
    always @(posedge lvds_parallel_clk) begin
        if (h_cnt == H_TOTAL - 1) begin
            h_cnt <= 0;
            if (v_cnt == V_TOTAL - 1)
                v_cnt <= 0;
            else
                v_cnt <= v_cnt + 1;
        end else begin
            h_cnt <= h_cnt + 1;
        end
    end

    // ------------------- 同步信号生成 -------------------
    always @(posedge lvds_parallel_clk) begin
        hsync <= (h_cnt < H_SYNC) ? 1'b0 : 1'b1;  // 行同步信号（部分屏需反相）
        vsync <= (v_cnt < V_SYNC) ? 1'b0 : 1'b1;  // 场同步信号
    end

    // ------------------- 数据有效区判断 -------------------
    always @(posedge lvds_parallel_clk) begin
        data_en <= (h_cnt >= (H_SYNC + H_BACK)) && (h_cnt < (H_SYNC + H_BACK + H_ACTIVE)) &&
                   (v_cnt >= (V_SYNC + V_BACK)) && (v_cnt < (V_SYNC + V_BACK + V_ACTIVE));
    end

    // ------------------- 波形实时显示输出（示波器风格） -------------------
    wire [9:0] wave_y_a = (data_a * V_ACTIVE) >> 14; // A通道映射到0~599
    wire [9:0] wave_y_b = (data_b * V_ACTIVE) >> 14; // B通道映射到0~599

    always @(posedge lvds_parallel_clk) begin
        if (data_en) begin
            // 只在对应行点亮像素，示波器风格
            if ((v_cnt - (V_SYNC + V_BACK)) == wave_y_a)
                lvds_tx0_DATA <= 8'hFF; // A通道波形为白色
            else
                lvds_tx0_DATA <= 8'd0;

            if ((v_cnt - (V_SYNC + V_BACK)) == wave_y_b)
                lvds_tx1_DATA <= 8'hFF; // B通道波形为白色
            else
                lvds_tx1_DATA <= 8'd0;

            lvds_tx2_DATA <= 8'd0;
            lvds_tx3_DATA <= 8'd0;
        end else begin
            lvds_tx0_DATA <= 8'd0;
            lvds_tx1_DATA <= 8'd0;
            lvds_tx2_DATA <= 8'd0;
            lvds_tx3_DATA <= 8'd0;
        end
    end

endmodule