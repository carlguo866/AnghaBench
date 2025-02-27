; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_last_active.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_last_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_sta_rx_stats = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ieee80211_sta_last_active(%struct.sta_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_sta_rx_stats*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %6 = call %struct.ieee80211_sta_rx_stats* @sta_get_last_rx_stats(%struct.sta_info* %5)
  store %struct.ieee80211_sta_rx_stats* %6, %struct.ieee80211_sta_rx_stats** %4, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.ieee80211_sta_rx_stats*, %struct.ieee80211_sta_rx_stats** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, %struct.ieee80211_sta_rx_stats* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @time_after(i64 %15, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12, %1
  %23 = load %struct.ieee80211_sta_rx_stats*, %struct.ieee80211_sta_rx_stats** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, %struct.ieee80211_sta_rx_stats* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %2, align 8
  br label %31

26:                                               ; preds = %12
  %27 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local %struct.ieee80211_sta_rx_stats* @sta_get_last_rx_stats(%struct.sta_info*) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
