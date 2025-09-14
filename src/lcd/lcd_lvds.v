// -----------------------------------------------------------------------------
// 模块名称：lcd_lvds
// 功能描述：
//   LVDS液晶屏驱动模块，产生行/场同步、数据使能信号，并输出测试彩条数据。
//   用于测试屏幕连接的成功性，显示标准测试图案。
// 端口说明：
//   lvds_parallel_clk : 并行像素时钟
//   lvds_serial_clk   : LVDS串行时钟（未用，可扩展）
//   lvds_tx*_DATA     : LVDS通道输出数据（8位）
// -----------------------------------------------------------------------------

module lcd_lvds (
    input            lvds_parallel_clk,   // 并行像素时钟
    input            lvds_serial_clk,     // LVDS串行时钟
    input  [13:0]    data_a,              // 保留接口，测试模式下未使用
    input  [13:0]    data_b,              // 保留接口，测试模式下未使用
    output reg [7:0] lvds_tx0_DATA,       // LVDS通道0数据 (R)
    output reg [7:0] lvds_tx1_DATA,       // LVDS通道1数据 (G)
    output reg [7:0] lvds_tx2_DATA,       // LVDS通道2数据 (B)
    output reg [7:0] lvds_tx3_DATA        // LVDS通道3数据 (控制信号)
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

    // ------------------- 测试图案生成 -------------------
    wire [10:0] pixel_x = h_cnt - (H_SYNC + H_BACK);  // 当前像素X坐标
    wire [9:0]  pixel_y = v_cnt - (V_SYNC + V_BACK);  // 当前像素Y坐标
    
    // 彩条宽度（8条彩条）
    wire [7:0] bar_width = H_ACTIVE / 8;
    wire [2:0] color_sel = pixel_x / bar_width;
    
    // RGB颜色定义
    reg [7:0] test_r, test_g, test_b;
    
    always @(*) begin
        case (color_sel)
            3'd0: begin test_r = 8'hFF; test_g = 8'hFF; test_b = 8'hFF; end // 白色
            3'd1: begin test_r = 8'hFF; test_g = 8'hFF; test_b = 8'h00; end // 黄色
            3'd2: begin test_r = 8'h00; test_g = 8'hFF; test_b = 8'hFF; end // 青色
            3'd3: begin test_r = 8'h00; test_g = 8'hFF; test_b = 8'h00; end // 绿色
            3'd4: begin test_r = 8'hFF; test_g = 8'h00; test_b = 8'hFF; end // 品红
            3'd5: begin test_r = 8'hFF; test_g = 8'h00; test_b = 8'h00; end // 红色
            3'd6: begin test_r = 8'h00; test_g = 8'h00; test_b = 8'hFF; end // 蓝色
            3'd7: begin test_r = 8'h00; test_g = 8'h00; test_b = 8'h00; end // 黑色
            default: begin test_r = 8'h00; test_g = 8'h00; test_b = 8'h00; end
        endcase
    end

    // ------------------- LVDS数据输出 -------------------
    always @(posedge lvds_parallel_clk) begin
        if (data_en) begin
            lvds_tx0_DATA <= test_r;    // 红色通道
            lvds_tx1_DATA <= test_g;    // 绿色通道
            lvds_tx2_DATA <= test_b;    // 蓝色通道
            lvds_tx3_DATA <= {6'b0, hsync, vsync}; // 控制信号
        end else begin
            lvds_tx0_DATA <= 8'd0;
            lvds_tx1_DATA <= 8'd0;
            lvds_tx2_DATA <= 8'd0;
            lvds_tx3_DATA <= {6'b0, hsync, vsync}; // 消隐期间保持同步信号
        end
    end

endmodule