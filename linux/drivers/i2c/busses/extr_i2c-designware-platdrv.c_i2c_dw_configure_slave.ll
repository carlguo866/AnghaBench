; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_i2c_dw_configure_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_i2c_dw_configure_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32, i32 }

@I2C_FUNC_SLAVE = common dso_local global i32 0, align 4
@DW_IC_DEFAULT_FUNCTIONALITY = common dso_local global i32 0, align 4
@DW_IC_CON_RX_FIFO_FULL_HLD_CTRL = common dso_local global i32 0, align 4
@DW_IC_CON_RESTART_EN = common dso_local global i32 0, align 4
@DW_IC_CON_STOP_DET_IFADDRESSED = common dso_local global i32 0, align 4
@DW_IC_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @i2c_dw_configure_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_configure_slave(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %3 = load i32, i32* @I2C_FUNC_SLAVE, align 4
  %4 = load i32, i32* @DW_IC_DEFAULT_FUNCTIONALITY, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @DW_IC_CON_RX_FIFO_FULL_HLD_CTRL, align 4
  %9 = load i32, i32* @DW_IC_CON_RESTART_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DW_IC_CON_STOP_DET_IFADDRESSED, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %14 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DW_IC_SLAVE, align 4
  %16 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
