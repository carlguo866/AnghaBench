; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ps3_gelic_net.c_gelic_card_free_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ps3_gelic_net.c_gelic_card_free_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { i32 }
%struct.gelic_descr = type { i64, %struct.gelic_descr* }

@GELIC_DESCR_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_card*, %struct.gelic_descr*)* @gelic_card_free_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_card_free_chain(%struct.gelic_card* %0, %struct.gelic_descr* %1) #0 {
  %3 = alloca %struct.gelic_card*, align 8
  %4 = alloca %struct.gelic_descr*, align 8
  %5 = alloca %struct.gelic_descr*, align 8
  store %struct.gelic_card* %0, %struct.gelic_card** %3, align 8
  store %struct.gelic_descr* %1, %struct.gelic_descr** %4, align 8
  %6 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  store %struct.gelic_descr* %6, %struct.gelic_descr** %5, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load %struct.gelic_descr*, %struct.gelic_descr** %5, align 8
  %9 = icmp ne %struct.gelic_descr* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.gelic_descr*, %struct.gelic_descr** %5, align 8
  %12 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %32

17:                                               ; preds = %15
  %18 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %19 = call i32 @ctodev(%struct.gelic_card* %18)
  %20 = load %struct.gelic_descr*, %struct.gelic_descr** %5, align 8
  %21 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @GELIC_DESCR_SIZE, align 4
  %24 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %25 = call i32 @dma_unmap_single(i32 %19, i64 %22, i32 %23, i32 %24)
  %26 = load %struct.gelic_descr*, %struct.gelic_descr** %5, align 8
  %27 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %17
  %29 = load %struct.gelic_descr*, %struct.gelic_descr** %5, align 8
  %30 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %29, i32 0, i32 1
  %31 = load %struct.gelic_descr*, %struct.gelic_descr** %30, align 8
  store %struct.gelic_descr* %31, %struct.gelic_descr** %5, align 8
  br label %7

32:                                               ; preds = %15
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @ctodev(%struct.gelic_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
