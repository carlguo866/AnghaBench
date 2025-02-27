; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_leave_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_leave_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*)* }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*)* @drv_leave_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_leave_ibss(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %4, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %7 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %34

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = call i32 @trace_drv_leave_ibss(%struct.ieee80211_local* %11, %struct.ieee80211_sub_if_data* %12)
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %17, align 8
  %19 = icmp ne i32 (i32*, i32*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %10
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %24, align 8
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = call i32 %25(i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %20, %10
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %33 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %32)
  br label %34

34:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_leave_ibss(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
