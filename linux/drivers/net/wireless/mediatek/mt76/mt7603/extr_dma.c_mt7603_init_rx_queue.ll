; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_dma.c_mt7603_init_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_dma.c_mt7603_init_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }
%struct.mt76_queue = type { i32 }

@MT_RX_RING_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*, %struct.mt76_queue*, i32, i32, i32)* @mt7603_init_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_init_rx_queue(%struct.mt7603_dev* %0, %struct.mt76_queue* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt7603_dev*, align 8
  %8 = alloca %struct.mt76_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %7, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %14 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MT_RX_RING_BASE, align 4
  %19 = call i32 @mt76_queue_alloc(%struct.mt7603_dev* %13, %struct.mt76_queue* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %5
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @MT_INT_RX_DONE(i32 %26)
  %28 = call i32 @mt7603_irq_enable(%struct.mt7603_dev* %25, i32 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @mt76_queue_alloc(%struct.mt7603_dev*, %struct.mt76_queue*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7603_irq_enable(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @MT_INT_RX_DONE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
