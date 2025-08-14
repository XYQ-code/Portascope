# Portascope 项目说明

## 功能描述

基于易灵思T35F324芯片，设计一个便携多功能仪器。

功能包括简易示波器，函数发生器，逻辑分析仪等。详细功能随开发更新。

## 实施方案

采用AD9248采集双通道模拟信号，用lvds驱动的1024*600屏幕做交互，
在VexRiscv软核处理器使用LVGL库完成交互界面的实现。

## 目前完成的工作：

1.驱动AD9248在multiplexed模式采集双通道信号。

2.创建建一个真双口BRAM和对应的控制模块pp_pack_ctrl用于存储和读取adc数据。

3.建立基本的lvds驱动模块。（由于使用VexRiscv + LVGL方案，此模块可能废弃）

4.创建软件自动复位模块。

5.创建VexRiscv软核处理器。

## 正在进行的工作：

1.将VexRiscv例化到顶层模块

## 工程目录

verilog源文件 -- Portascope/src/

顶层模块 -- Portascope/src/Portascope.v

VexRiscv配置文件 -- Portascope/scala
