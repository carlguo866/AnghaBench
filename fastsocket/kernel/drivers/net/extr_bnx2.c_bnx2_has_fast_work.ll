; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_has_fast_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_has_fast_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info, %struct.bnx2_tx_ring_info }
%struct.bnx2_rx_ring_info = type { i64 }
%struct.bnx2_tx_ring_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2_napi*)* @bnx2_has_fast_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_has_fast_work(%struct.bnx2_napi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2_napi*, align 8
  %4 = alloca %struct.bnx2_tx_ring_info*, align 8
  %5 = alloca %struct.bnx2_rx_ring_info*, align 8
  store %struct.bnx2_napi* %0, %struct.bnx2_napi** %3, align 8
  %6 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %6, i32 0, i32 1
  store %struct.bnx2_tx_ring_info* %7, %struct.bnx2_tx_ring_info** %4, align 8
  %8 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %8, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %9, %struct.bnx2_rx_ring_info** %5, align 8
  %10 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %11 = call i64 @bnx2_get_hw_rx_cons(%struct.bnx2_napi* %10)
  %12 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %18 = call i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi* %17)
  %19 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %1
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @bnx2_get_hw_rx_cons(%struct.bnx2_napi*) #1

declare dso_local i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
