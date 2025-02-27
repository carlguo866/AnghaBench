; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_hsdma_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mtk_hsdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mtk_hsdma_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.mtk_hsdma_device* @to_hsdma_dev(%struct.dma_chan* %6)
  store %struct.mtk_hsdma_device* %7, %struct.mtk_hsdma_device** %4, align 8
  %8 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %8, i32 0, i32 0
  %10 = call i32 @refcount_read(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %14 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mtk_hsdma_alloc_pchan(%struct.mtk_hsdma_device* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %12
  %23 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %23, i32 0, i32 0
  %25 = call i32 @refcount_set(i32* %24, i32 1)
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %27, i32 0, i32 0
  %29 = call i32 @refcount_inc(i32* %28)
  br label %30

30:                                               ; preds = %26, %22
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.mtk_hsdma_device* @to_hsdma_dev(%struct.dma_chan*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @mtk_hsdma_alloc_pchan(%struct.mtk_hsdma_device*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
