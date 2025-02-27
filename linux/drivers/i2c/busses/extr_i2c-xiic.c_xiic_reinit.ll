; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xiic_i2c = type { i32 }

@XIIC_RESETR_OFFSET = common dso_local global i32 0, align 4
@XIIC_RESET_MASK = common dso_local global i32 0, align 4
@XIIC_RFD_REG_OFFSET = common dso_local global i32 0, align 4
@IIC_RX_FIFO_DEPTH = common dso_local global i64 0, align 8
@XIIC_CR_REG_OFFSET = common dso_local global i32 0, align 4
@XIIC_CR_TX_FIFO_RESET_MASK = common dso_local global i64 0, align 8
@XIIC_CR_ENABLE_DEVICE_MASK = common dso_local global i64 0, align 8
@XIIC_DGIER_OFFSET = common dso_local global i32 0, align 4
@XIIC_GINTR_ENABLE_MASK = common dso_local global i32 0, align 4
@XIIC_INTR_ARB_LOST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xiic_i2c*)* @xiic_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xiic_reinit(%struct.xiic_i2c* %0) #0 {
  %2 = alloca %struct.xiic_i2c*, align 8
  store %struct.xiic_i2c* %0, %struct.xiic_i2c** %2, align 8
  %3 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %4 = load i32, i32* @XIIC_RESETR_OFFSET, align 4
  %5 = load i32, i32* @XIIC_RESET_MASK, align 4
  %6 = call i32 @xiic_setreg32(%struct.xiic_i2c* %3, i32 %4, i32 %5)
  %7 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %8 = load i32, i32* @XIIC_RFD_REG_OFFSET, align 4
  %9 = load i64, i64* @IIC_RX_FIFO_DEPTH, align 8
  %10 = sub nsw i64 %9, 1
  %11 = call i32 @xiic_setreg8(%struct.xiic_i2c* %7, i32 %8, i64 %10)
  %12 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %13 = load i32, i32* @XIIC_CR_REG_OFFSET, align 4
  %14 = load i64, i64* @XIIC_CR_TX_FIFO_RESET_MASK, align 8
  %15 = call i32 @xiic_setreg8(%struct.xiic_i2c* %12, i32 %13, i64 %14)
  %16 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %17 = load i32, i32* @XIIC_CR_REG_OFFSET, align 4
  %18 = load i64, i64* @XIIC_CR_ENABLE_DEVICE_MASK, align 8
  %19 = call i32 @xiic_setreg8(%struct.xiic_i2c* %16, i32 %17, i64 %18)
  %20 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %21 = call i32 @xiic_clear_rx_fifo(%struct.xiic_i2c* %20)
  %22 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %23 = load i32, i32* @XIIC_DGIER_OFFSET, align 4
  %24 = load i32, i32* @XIIC_GINTR_ENABLE_MASK, align 4
  %25 = call i32 @xiic_setreg32(%struct.xiic_i2c* %22, i32 %23, i32 %24)
  %26 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %27 = load i32, i32* @XIIC_INTR_ARB_LOST_MASK, align 4
  %28 = call i32 @xiic_irq_clr_en(%struct.xiic_i2c* %26, i32 %27)
  ret void
}

declare dso_local i32 @xiic_setreg32(%struct.xiic_i2c*, i32, i32) #1

declare dso_local i32 @xiic_setreg8(%struct.xiic_i2c*, i32, i64) #1

declare dso_local i32 @xiic_clear_rx_fifo(%struct.xiic_i2c*) #1

declare dso_local i32 @xiic_irq_clr_en(%struct.xiic_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
