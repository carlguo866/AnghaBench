; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_rx_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_rx_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }

@MVPP2_RX_FIFO_PORT_DATA_SIZE_32KB = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_ATTR_SIZE_32KB = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_DATA_SIZE_8KB = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_ATTR_SIZE_8KB = common dso_local global i32 0, align 4
@MVPP2_MAX_PORTS = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB = common dso_local global i32 0, align 4
@MVPP2_RX_MIN_PKT_SIZE_REG = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_MIN_PKT = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_INIT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp22_rx_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_rx_fifo_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  %4 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %5 = call i32 @MVPP2_RX_DATA_FIFO_SIZE_REG(i32 0)
  %6 = load i32, i32* @MVPP2_RX_FIFO_PORT_DATA_SIZE_32KB, align 4
  %7 = call i32 @mvpp2_write(%struct.mvpp2* %4, i32 %5, i32 %6)
  %8 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %9 = call i32 @MVPP2_RX_ATTR_FIFO_SIZE_REG(i32 0)
  %10 = load i32, i32* @MVPP2_RX_FIFO_PORT_ATTR_SIZE_32KB, align 4
  %11 = call i32 @mvpp2_write(%struct.mvpp2* %8, i32 %9, i32 %10)
  %12 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %13 = call i32 @MVPP2_RX_DATA_FIFO_SIZE_REG(i32 1)
  %14 = load i32, i32* @MVPP2_RX_FIFO_PORT_DATA_SIZE_8KB, align 4
  %15 = call i32 @mvpp2_write(%struct.mvpp2* %12, i32 %13, i32 %14)
  %16 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %17 = call i32 @MVPP2_RX_ATTR_FIFO_SIZE_REG(i32 1)
  %18 = load i32, i32* @MVPP2_RX_FIFO_PORT_ATTR_SIZE_8KB, align 4
  %19 = call i32 @mvpp2_write(%struct.mvpp2* %16, i32 %17, i32 %18)
  store i32 2, i32* %3, align 4
  br label %20

20:                                               ; preds = %35, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MVPP2_MAX_PORTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @MVPP2_RX_DATA_FIFO_SIZE_REG(i32 %26)
  %28 = load i32, i32* @MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB, align 4
  %29 = call i32 @mvpp2_write(%struct.mvpp2* %25, i32 %27, i32 %28)
  %30 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @MVPP2_RX_ATTR_FIFO_SIZE_REG(i32 %31)
  %33 = load i32, i32* @MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB, align 4
  %34 = call i32 @mvpp2_write(%struct.mvpp2* %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %40 = load i32, i32* @MVPP2_RX_MIN_PKT_SIZE_REG, align 4
  %41 = load i32, i32* @MVPP2_RX_FIFO_PORT_MIN_PKT, align 4
  %42 = call i32 @mvpp2_write(%struct.mvpp2* %39, i32 %40, i32 %41)
  %43 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %44 = load i32, i32* @MVPP2_RX_FIFO_INIT_REG, align 4
  %45 = call i32 @mvpp2_write(%struct.mvpp2* %43, i32 %44, i32 1)
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_RX_DATA_FIFO_SIZE_REG(i32) #1

declare dso_local i32 @MVPP2_RX_ATTR_FIFO_SIZE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
