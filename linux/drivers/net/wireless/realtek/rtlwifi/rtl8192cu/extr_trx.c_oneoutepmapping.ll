; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_oneoutepmapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_oneoutepmapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_ep_map = type { i32* }

@RTL_TXQ_BE = common dso_local global i64 0, align 8
@RTL_TXQ_BK = common dso_local global i64 0, align 8
@RTL_TXQ_VI = common dso_local global i64 0, align 8
@RTL_TXQ_VO = common dso_local global i64 0, align 8
@RTL_TXQ_MGT = common dso_local global i64 0, align 8
@RTL_TXQ_BCN = common dso_local global i64 0, align 8
@RTL_TXQ_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_ep_map*)* @oneoutepmapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oneoutepmapping(%struct.ieee80211_hw* %0, %struct.rtl_ep_map* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_ep_map*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_ep_map* %1, %struct.rtl_ep_map** %4, align 8
  %5 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %4, align 8
  %6 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @RTL_TXQ_BE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 2, i32* %9, align 4
  %10 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @RTL_TXQ_BK, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 2, i32* %14, align 4
  %15 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @RTL_TXQ_VI, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 2, i32* %19, align 4
  %20 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @RTL_TXQ_VO, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 2, i32* %24, align 4
  %25 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @RTL_TXQ_MGT, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 2, i32* %29, align 4
  %30 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %4, align 8
  %31 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @RTL_TXQ_BCN, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 2, i32* %34, align 4
  %35 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @RTL_TXQ_HI, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 2, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
