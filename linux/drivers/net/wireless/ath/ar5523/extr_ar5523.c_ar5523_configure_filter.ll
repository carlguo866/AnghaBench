; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar5523* }
%struct.ar5523 = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"configure_filter called\0A\00", align 1
@AR5523_SUPPORTED_FILTERS = common dso_local global i32 0, align 4
@UATH_FILTER_RX_UCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_MCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_BCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_BEACON = common dso_local global i32 0, align 4
@UATH_FILTER_RX_PROM = common dso_local global i32 0, align 4
@UATH_FILTER_OP_INIT = common dso_local global i32 0, align 4
@UATH_FILTER_OP_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @ar5523_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar5523*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ar5523*, %struct.ar5523** %12, align 8
  store %struct.ar5523* %13, %struct.ar5523** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %15 = call i32 @ar5523_dbg(%struct.ar5523* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %17 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %20 = call i32 @ar5523_flush_tx(%struct.ar5523* %19)
  %21 = load i32, i32* @AR5523_SUPPORTED_FILTERS, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @UATH_FILTER_RX_UCAST, align 4
  %26 = load i32, i32* @UATH_FILTER_RX_MCAST, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UATH_FILTER_RX_BCAST, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @UATH_FILTER_RX_BEACON, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UATH_FILTER_RX_PROM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %37 = load i32, i32* @UATH_FILTER_OP_INIT, align 4
  %38 = call i32 @ar5523_set_rxfilter(%struct.ar5523* %36, i32 0, i32 %37)
  %39 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @UATH_FILTER_OP_SET, align 4
  %42 = call i32 @ar5523_set_rxfilter(%struct.ar5523* %39, i32 %40, i32 %41)
  %43 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %44 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  ret void
}

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar5523_flush_tx(%struct.ar5523*) #1

declare dso_local i32 @ar5523_set_rxfilter(%struct.ar5523*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
