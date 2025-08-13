
// =========================================================================
// 纯软件复位生成器模块
// =========================================================================
module auto_rst_n (
    input  wire clk,
    output reg  rst_sys_n
);

    // 复位计数器：16位，适用于不同时钟频率
    reg [15:0] reset_counter;
    
    // 上电后自动计数，计数完成后释放复位
    always @(posedge clk) begin
        if (reset_counter != 16'hFFFF) begin
            reset_counter <= reset_counter + 1'b1;
            rst_sys_n <= 1'b0;              // 复位期间保持低电平
        end else begin
            rst_sys_n <= 1'b1;              // 计数完成后释放复位
        end
    end

endmodule