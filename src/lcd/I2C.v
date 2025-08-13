module i2c_master(
    input wire clk,         // FPGA系统时钟
    input wire rst_n,       // 低有效复位
    inout wire sda,         // I2C数据线（连接J5-26）
    output wire scl,        // I2C时钟线（连接J5-27）

    // 用户接口
    input wire start,       // 开始I2C传输
    input wire [6:0] dev_addr, // 7位I2C从机地址
    input wire rw,          // 读写控制：0=写，1=读
    input wire [7:0] data_wr,  // 写数据
    output reg [7:0] data_rd,  // 读数据
    output reg busy,        // 忙信号
    output reg ack,         // 应答标志
    output reg done         // 完成标志
);

    // 省略详细状态机代码和I2C时序控制
    // 这里只写端口定义和三态驱动示例，可根据需要填充详细实现

    reg scl_reg, scl_en;
    reg sda_reg, sda_en;

    assign scl = scl_en ? scl_reg : 1'bz; // open-drain输出
    assign sda = sda_en ? sda_reg : 1'bz; // open-drain输出

    // ... 状态机、I2C时序逻辑（start、stop、ACK、读写等）

endmodule