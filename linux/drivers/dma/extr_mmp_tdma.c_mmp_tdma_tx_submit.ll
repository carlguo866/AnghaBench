; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.mmp_tdma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @mmp_tdma_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_tdma_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.mmp_tdma_chan*, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %4 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %5 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mmp_tdma_chan* @to_mmp_tdma_chan(i32 %6)
  store %struct.mmp_tdma_chan* %7, %struct.mmp_tdma_chan** %3, align 8
  %8 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %9 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mmp_tdma_chan_set_desc(%struct.mmp_tdma_chan* %8, i32 %11)
  ret i32 0
}

declare dso_local %struct.mmp_tdma_chan* @to_mmp_tdma_chan(i32) #1

declare dso_local i32 @mmp_tdma_chan_set_desc(%struct.mmp_tdma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
