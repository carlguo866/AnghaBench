; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_hostif.c_length_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_hostif.c_length_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }
%struct.carl9170_tx_superframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_desc*)* @length_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @length_check(%struct.dma_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_desc*, align 8
  %4 = alloca %struct.carl9170_tx_superframe*, align 8
  store %struct.dma_desc* %0, %struct.dma_desc** %3, align 8
  %5 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %6 = call %struct.carl9170_tx_superframe* @__get_super(%struct.dma_desc* %5)
  store %struct.carl9170_tx_superframe* %6, %struct.carl9170_tx_superframe** %4, align 8
  %7 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %8 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %4, align 8
  %18 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load volatile i32, i32* %19, align 4
  %21 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %22 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.carl9170_tx_superframe* @__get_super(%struct.dma_desc*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
