; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_get_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_get_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate = type { i32 }
%struct.cw1200_common = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.ieee80211_rate* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.ieee80211_rate* }
%struct.ieee80211_tx_rate = type { i64, i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_rate* (%struct.cw1200_common*, %struct.ieee80211_tx_rate*)* @cw1200_get_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_rate* @cw1200_get_tx_rate(%struct.cw1200_common* %0, %struct.ieee80211_tx_rate* %1) #0 {
  %3 = alloca %struct.ieee80211_rate*, align 8
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  %6 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.ieee80211_rate* null, %struct.ieee80211_rate** %3, align 8
  br label %47

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 2
  %21 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %20, align 8
  %22 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %21, i64 %24
  store %struct.ieee80211_rate* %25, %struct.ieee80211_rate** %3, align 8
  br label %47

26:                                               ; preds = %11
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %32, align 8
  %34 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %35 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %33, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %41, align 8
  %43 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %42, i64 %45
  store %struct.ieee80211_rate* %46, %struct.ieee80211_rate** %3, align 8
  br label %47

47:                                               ; preds = %26, %18, %10
  %48 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %3, align 8
  ret %struct.ieee80211_rate* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
