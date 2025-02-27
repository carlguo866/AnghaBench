; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx_int_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx_int_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcan_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XCAN_FLAG_RX_FIFO_MULTI = common dso_local global i32 0, align 4
@XCAN_IXR_RXOK_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_RXNEMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xcan_priv*)* @xcan_rx_int_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_rx_int_mask(%struct.xcan_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xcan_priv*, align 8
  store %struct.xcan_priv* %0, %struct.xcan_priv** %3, align 8
  %4 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %5 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @XCAN_FLAG_RX_FIFO_MULTI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @XCAN_IXR_RXOK_MASK, align 4
  store i32 %12, i32* %2, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @XCAN_IXR_RXNEMP_MASK, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
