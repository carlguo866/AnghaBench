; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ishtmixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ishtmixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ie_htinfo = type { i32 }

@IEEE80211_HTINFO_OPMODE = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_OPMODE_MIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ishtmixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtmixed(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ieee80211_ie_htinfo*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.ieee80211_ie_htinfo*
  store %struct.ieee80211_ie_htinfo* %5, %struct.ieee80211_ie_htinfo** %3, align 8
  %6 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_HTINFO_OPMODE, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @IEEE80211_HTINFO_OPMODE_MIXED, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
