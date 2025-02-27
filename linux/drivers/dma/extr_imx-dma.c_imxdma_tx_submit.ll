; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.imxdma_channel = type { i32, %struct.TYPE_2__, %struct.imxdma_engine* }
%struct.TYPE_2__ = type { i32 }
%struct.imxdma_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @imxdma_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxdma_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.imxdma_channel*, align 8
  %4 = alloca %struct.imxdma_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.imxdma_channel* @to_imxdma_chan(i32 %9)
  store %struct.imxdma_channel* %10, %struct.imxdma_channel** %3, align 8
  %11 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %12 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %11, i32 0, i32 2
  %13 = load %struct.imxdma_engine*, %struct.imxdma_engine** %12, align 8
  store %struct.imxdma_engine* %13, %struct.imxdma_engine** %4, align 8
  %14 = load %struct.imxdma_engine*, %struct.imxdma_engine** %4, align 8
  %15 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %19 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %23 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %22, i32 0, i32 0
  %24 = call i32 @list_move_tail(i32 %21, i32* %23)
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %26 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.imxdma_engine*, %struct.imxdma_engine** %4, align 8
  %28 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.imxdma_channel* @to_imxdma_chan(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move_tail(i32, i32*) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
