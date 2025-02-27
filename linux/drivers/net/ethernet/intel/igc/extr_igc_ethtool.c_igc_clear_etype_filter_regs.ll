; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_clear_etype_filter_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_clear_etype_filter_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32*, %struct.igc_hw }
%struct.igc_hw = type { i32 }

@IGC_ETQF_QUEUE_ENABLE = common dso_local global i32 0, align 4
@IGC_ETQF_QUEUE_MASK = common dso_local global i32 0, align 4
@IGC_ETQF_FILTER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*, i64)* @igc_clear_etype_filter_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_clear_etype_filter_regs(%struct.igc_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %7, i32 0, i32 1
  store %struct.igc_hw* %8, %struct.igc_hw** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @IGC_ETQF(i64 %9)
  %11 = call i32 @rd32(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @IGC_ETQF_QUEUE_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @IGC_ETQF_QUEUE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @IGC_ETQF_FILTER_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @IGC_ETQF(i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @wr32(i32 %25, i32 %26)
  %28 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 0, i32* %32, align 4
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @IGC_ETQF(i64) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
