; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_key_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_key_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_key*)* @wpi_key_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_key_set(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_key*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %4, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %6 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %7 = call i32 @wpi_process_key(%struct.ieee80211vap* %5, %struct.ieee80211_key* %6, i32 1)
  ret i32 %7
}

declare dso_local i32 @wpi_process_key(%struct.ieee80211vap*, %struct.ieee80211_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
