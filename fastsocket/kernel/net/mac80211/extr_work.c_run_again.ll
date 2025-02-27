; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_work.c_run_again.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_work.c_run_again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i64)* @run_again to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_again(%struct.ieee80211_local* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %6 = call i32 @ASSERT_WORK_MTX(%struct.ieee80211_local* %5)
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 0
  %9 = call i32 @timer_pending(%struct.TYPE_3__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @time_before(i64 %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11, %2
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @mod_timer(%struct.TYPE_3__* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @ASSERT_WORK_MTX(%struct.ieee80211_local*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
