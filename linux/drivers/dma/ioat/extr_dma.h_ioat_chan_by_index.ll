; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.h_ioat_chan_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.h_ioat_chan_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_chan = type { i32 }
%struct.ioatdma_device = type { %struct.ioatdma_chan** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioatdma_chan* (%struct.ioatdma_device*, i32)* @ioat_chan_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioatdma_chan* @ioat_chan_by_index(%struct.ioatdma_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ioatdma_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %6 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %5, i32 0, i32 0
  %7 = load %struct.ioatdma_chan**, %struct.ioatdma_chan*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ioatdma_chan*, %struct.ioatdma_chan** %7, i64 %9
  %11 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %10, align 8
  ret %struct.ioatdma_chan* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
