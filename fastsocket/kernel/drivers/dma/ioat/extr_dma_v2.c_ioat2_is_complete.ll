; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_is_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.ioat2_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ioatdma_device* }
%struct.ioatdma_device = type { i32 (i64)* }

@DMA_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioat2_is_complete(%struct.dma_chan* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ioat2_dma_chan*, align 8
  %11 = alloca %struct.ioatdma_device*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %13 = call %struct.ioat2_dma_chan* @to_ioat2_chan(%struct.dma_chan* %12)
  store %struct.ioat2_dma_chan* %13, %struct.ioat2_dma_chan** %10, align 8
  %14 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %10, align 8
  %15 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ioatdma_device*, %struct.ioatdma_device** %16, align 8
  store %struct.ioatdma_device* %17, %struct.ioatdma_device** %11, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @ioat_is_complete(%struct.dma_chan* %18, i32 %19, i32* %20, i32* %21)
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @DMA_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @DMA_SUCCESS, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %4
  %30 = load %struct.ioatdma_device*, %struct.ioatdma_device** %11, align 8
  %31 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %30, i32 0, i32 0
  %32 = load i32 (i64)*, i32 (i64)** %31, align 8
  %33 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %10, align 8
  %34 = ptrtoint %struct.ioat2_dma_chan* %33 to i64
  %35 = call i32 %32(i64 %34)
  %36 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @ioat_is_complete(%struct.dma_chan* %36, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.ioat2_dma_chan* @to_ioat2_chan(%struct.dma_chan*) #1

declare dso_local i32 @ioat_is_complete(%struct.dma_chan*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
