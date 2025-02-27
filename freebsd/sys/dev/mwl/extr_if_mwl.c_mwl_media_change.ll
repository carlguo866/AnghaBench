; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@ENETRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @mwl_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  store %struct.ieee80211vap* %7, %struct.ieee80211vap** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call i32 @ieee80211_media_change(%struct.ifnet* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ENETRESET, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %15 = call i32 @mwl_setrates(%struct.ieee80211vap* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @ieee80211_media_change(%struct.ifnet*) #1

declare dso_local i32 @mwl_setrates(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
