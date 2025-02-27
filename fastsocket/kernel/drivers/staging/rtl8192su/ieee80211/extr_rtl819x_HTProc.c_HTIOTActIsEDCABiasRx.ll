; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTIOTActIsEDCABiasRx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTIOTActIsEDCABiasRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_network = type { i32 }

@HT_IOT_PEER_ATHEROS = common dso_local global i64 0, align 8
@HT_IOT_PEER_BROADCOM = common dso_local global i64 0, align 8
@HT_IOT_PEER_RALINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTIOTActIsEDCABiasRx(%struct.ieee80211_device* %0, %struct.ieee80211_network* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.ieee80211_network*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.ieee80211_network* %1, %struct.ieee80211_network** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HT_IOT_PEER_ATHEROS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HT_IOT_PEER_BROADCOM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HT_IOT_PEER_RALINK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %2
  store i32 1, i32* %3, align 4
  br label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
