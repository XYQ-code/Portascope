// -----------------------------------------------------------------------------
// 模块名称：pp_pack_ctrl
// 功能描述：
//    1. 实现单BRAM的打包写入和分半区（ping-pong）管理。
//    2. 写端：自动生成分半区写地址，支持连续采样数据写入。
//    3. 读端：跨时钟域同步写指针，实现与写端解耦的安全读取。
//    4. 读端：采用Bresenham算法进行64/75速率抽取，支持速率匹配。
//    5. 读端：自动切换半区，保证每次读取到完整的一帧数据。
//    6. 读端：将BRAM中打包的A/B通道数据拆包输出，便于后续处理。
// 端口说明：
//    wr_clk    ：写时钟（采样时钟）
//    rd_clk    ：读时钟（显示/处理时钟）
//    wr_addr   ：写地址（分半区，供BRAM写端口使用）
//    rd_addr   ：读地址（分半区，供BRAM读端口使用）
//    rd_data   ：BRAM读出的打包数据（A/B通道打包）
//    out_a     ：A通道解包输出（signed）
//    out_b     ：B通道解包输出（signed）
// -----------------------------------------------------------------------------
module pp_pack_ctrl #(
  parameter integer W = 14,   // 单通道位宽
  parameter integer AW = 10  // 半区地址宽 -> 每半区深度=2^AW，总深度=2^(AW+1)
)(
  input                  wr_rst_n,
  input                  rd_rst_n,
  input                  wr_clk,
  input                  rd_clk,
  output       [AW:0]    wr_addr,
  output       [AW:0]    rd_addr,
  input        [2*W-1:0] rd_data,
  output signed [W-1:0]  out_a,
  output signed [W-1:0]  out_b
);
  // 写端地址生成：{wr_idx, wr_off}，wr_idx为半区标志，wr_off为区内偏移
  reg              wr_idx;
  reg [AW-1:0]     wr_off;
  always @(posedge wr_clk or negedge wr_rst_n) begin
    if (!wr_rst_n) begin
      wr_idx <= 1'b0;
      wr_off <= {AW{1'b0}};
    end else begin
      {wr_idx, wr_off} <= {wr_idx, wr_off} + 1'b1;
    end
  end

  assign wr_addr  = {wr_idx, wr_off};

  // 写端半区标志跨时钟域同步到读端
  reg wr_idx_s1, wr_idx_s2;
  always @(posedge rd_clk or negedge rd_rst_n) begin
    if (!rd_rst_n) begin
      wr_idx_s1 <= 1'b0;
      wr_idx_s2 <= 1'b0;
    end else begin
      wr_idx_s1 <= wr_idx;
      wr_idx_s2 <= wr_idx_s1;
    end
  end

  // 读端半区选择：始终读取与写端不同的半区
  wire             rd_idx = ~wr_idx_s2;
  reg  [AW-1:0]    rd_off;

  // 64/75抽取（Bresenham算法）：64拍里做11次双步，实现速率匹配
  reg  [6:0] acc;  // 0..63
  wire [6:0] acc_sum   = acc + 7'd11;
  wire       double_step = (acc_sum >= 7'd64);
  wire [6:0] acc_next  = double_step ? (acc_sum - 7'd64) : acc_sum;

  // 半区切换检测：wr_idx在读域的边沿变化，表示新半区数据就绪
  wire half_switched = (wr_idx_s1 ^ wr_idx_s2);

  // 读端地址和抽取计数器管理
  always @(posedge rd_clk or negedge rd_rst_n) begin
    if (!rd_rst_n) begin
      rd_off <= {AW{1'b0}};
      acc    <= 7'd0;
    end else if (half_switched) begin
      // 新的上一半区就绪：从0开始读，并重置acc
      rd_off <= {AW{1'b0}};
      acc    <= 7'd0;
    end else begin
      rd_off <= rd_off + (double_step ? 2'd2 : 2'd1);
      acc    <= acc_next;
    end
  end

  assign rd_addr = {rd_idx, rd_off};

  // 读端拆包：将BRAM读出的打包数据分离为A/B通道
  assign out_a = rd_data[2*W-1:W];
  assign out_b = rd_data[W-1:0];
endmodule