; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_ap_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_ap_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { i64, i64, %struct.sta_table* }
%struct.sta_table = type { i32, i32 }
%struct.ieee80211vap = type { i32 }

@staScanTable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_scan_state*, %struct.ieee80211vap*)* @ap_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_start(%struct.ieee80211_scan_state* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.sta_table*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %6 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %6, i32 0, i32 2
  %8 = load %struct.sta_table*, %struct.sta_table** %7, align 8
  store %struct.sta_table* %8, %struct.sta_table** %5, align 8
  %9 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = load i32, i32* @staScanTable, align 4
  %12 = call i32 @makescanlist(%struct.ieee80211_scan_state* %9, %struct.ieee80211vap* %10, i32 %11)
  %13 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = call i8* @msecs_to_ticks(i32 200)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = call i8* @msecs_to_ticks(i32 200)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.sta_table*, %struct.sta_table** %5, align 8
  %34 = getelementptr inbounds %struct.sta_table, %struct.sta_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.sta_table*, %struct.sta_table** %5, align 8
  %38 = getelementptr inbounds %struct.sta_table, %struct.sta_table* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  ret i32 0
}

declare dso_local i32 @makescanlist(%struct.ieee80211_scan_state*, %struct.ieee80211vap*, i32) #1

declare dso_local i8* @msecs_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
