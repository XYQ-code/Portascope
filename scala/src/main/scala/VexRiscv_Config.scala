package vexriscv.demo

import vexriscv.plugin._
import vexriscv.{plugin, VexRiscv, VexRiscvConfig}
import spinal.core._

object VexRiscv_Config extends App{
  def config = VexRiscvConfig(
    plugins = List(
      // 指令总线 - 针对LVGL需要较大的指令缓存
      new IBusSimplePlugin(
        resetVector = 0x80000000l,
        cmdForkOnSecondStage = false,
        cmdForkPersistence = false,
        catchAccessFault = true,
        prediction = vexriscv.plugin.STATIC,  // 启用静态分支预测，提升LVGL性能
        historyRamSizeLog2 = 10,  // 增大历史缓存，适合GUI循环
        keepPcPlus4 = true,  // 保持PC+4，有助于性能
        compressedGen = false,
        busLatencyMin = 1,
        pendingMax = 7,  // 增大待处理事务数，提升内存访问效率
        injectorStage = true,
        rspHoldValue = false,
        singleInstructionPipeline = false,
        memoryTranslatorPortConfig = null,
        relaxPredictorAddress = true,  // 放松预测器地址限制
        predictionBuffer = true,  // 启用预测缓冲
        bigEndian = false,
        vecRspBuffer = false
      ),
      
      // 数据总线 - 针对高频ADC数据访问和显存操作
      new DBusSimplePlugin(
        catchAddressMisaligned = true,
        catchAccessFault = true,
        earlyInjection = false,
        withLrSc = true  // 启用原子操作支持，LVGL多任务可能需要
      ),
      
      // 解码器
      new DecoderSimplePlugin(
        catchIllegalInstruction = true
      ),
      
      // 寄存器文件 - 异步读取提升性能
      new RegFilePlugin(
        regFileReadyKind = plugin.ASYNC,  // 异步读取，提升性能
        zeroBoot = false,
        x0Init = false
      ),
      
      // ALU
      new IntAluPlugin,
      
      // 源操作数处理
      new SrcPlugin(
        separatedAddSub = false,
        executeInsertion = true
      ),
      
      // 完整的移位器 - LVGL图形操作需要
      new FullBarrelShifterPlugin(
        earlyInjection = false
      ),
      
      // 冒险检测 - 优化流水线
      new HazardSimplePlugin(
        bypassExecute           = true,
        bypassMemory            = true,
        bypassWriteBack         = true,
        bypassWriteBackBuffer   = true,
        pessimisticUseSrc       = false,
        pessimisticWriteRegFile = false,
        pessimisticAddressMatch = false
      ),
      
      // 乘法器 - LVGL图形计算需要
      new MulPlugin,
      
      // 除法器 - 数学运算支持
      new DivPlugin,
      
      // 控制状态寄存器 - 启用完整的CSR支持和ebreak
      new CsrPlugin(CsrPluginConfig.all(0x80000020l).copy(
        ebreakGen = true,  // 支持ebreak指令
        wfiGenAsWait = true,  // WFI指令生成等待
        wfiGenAsNop = false
      )),
      
      // 调试插件 - 开发阶段很重要
      new DebugPlugin(ClockDomain.current.clone(reset = Bool().setName("debugReset"))),
      
      // 分支插件
      new BranchPlugin(
        earlyBranch = false,
        catchAddressMisaligned = true,
        fenceiGenAsAJump = false
      ),
      
      // YAML配置输出
      new YamlPlugin("VexRiscv_ADC_LVGL.yaml")
    )
  )

  def cpu() = new VexRiscv(config)

  SpinalVerilog(cpu())
}