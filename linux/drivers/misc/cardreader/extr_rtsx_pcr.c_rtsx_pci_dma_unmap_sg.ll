; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_dma_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_dma_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_pci_dma_unmap_sg(%struct.rtsx_pcr* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtsx_pcr*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %9, align 4
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dma_unmap_sg(i32* %21, %struct.scatterlist* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
