; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_release_buffered_frames.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_release_buffered_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32, i32, i32, i32)* }
%struct.sta_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.sta_info*, i32, i32, i32, i32)* @drv_release_buffered_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_release_buffered_frames(%struct.ieee80211_local* %0, %struct.sta_info* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store %struct.sta_info* %1, %struct.sta_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 0
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @trace_drv_release_buffered_frames(%struct.ieee80211_local* %13, i32* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %24, align 8
  %26 = icmp ne i32 (i32*, i32*, i32, i32, i32, i32)* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %6
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %31, align 8
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 0
  %35 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 %32(i32* %34, i32* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %27, %6
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %44 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %43)
  ret void
}

declare dso_local i32 @trace_drv_release_buffered_frames(%struct.ieee80211_local*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
