; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.h_for_each_sta_info_type_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.h_for_each_sta_info_type_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i32*, %struct.sta_info*, %struct.sta_info*)* @for_each_sta_info_type_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_each_sta_info_type_check(%struct.ieee80211_local* %0, i32* %1, %struct.sta_info* %2, %struct.sta_info* %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  store %struct.sta_info* %3, %struct.sta_info** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
