; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getroam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getroam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211req = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_getroam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getroam(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211req*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %4, align 8
  %6 = load %struct.ieee80211req*, %struct.ieee80211req** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ugt i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 4, i64* %5, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ieee80211req*, %struct.ieee80211req** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @copyout(i32 %15, i32 %18, i64 %19)
  ret i32 %20
}

declare dso_local i32 @copyout(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
