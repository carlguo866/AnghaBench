; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.tegra_dma* }
%struct.tegra_dma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TEGRA_APBDMA_CHAN_CSRE = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_CSRE_PAUSE = common dso_local global i32 0, align 4
@TEGRA_APBDMA_BURST_COMPLETE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dma_channel*, i32)* @tegra_dma_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dma_pause(%struct.tegra_dma_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_dma_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_dma*, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %6, i32 0, i32 0
  %8 = load %struct.tegra_dma*, %struct.tegra_dma** %7, align 8
  store %struct.tegra_dma* %8, %struct.tegra_dma** %5, align 8
  %9 = load %struct.tegra_dma*, %struct.tegra_dma** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %17 = load i32, i32* @TEGRA_APBDMA_CHAN_CSRE, align 4
  %18 = load i32, i32* @TEGRA_APBDMA_CHAN_CSRE_PAUSE, align 4
  %19 = call i32 @tdc_write(%struct.tegra_dma_channel* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @TEGRA_APBDMA_BURST_COMPLETE_TIME, align 4
  %24 = call i32 @udelay(i32 %23)
  br label %25

25:                                               ; preds = %22, %15
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @tegra_dma_global_pause(%struct.tegra_dma_channel* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @tdc_write(%struct.tegra_dma_channel*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tegra_dma_global_pause(%struct.tegra_dma_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
