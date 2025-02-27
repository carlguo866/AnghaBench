; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_csa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211com* }
%struct.ieee80211com = type { i64, i32 }
%struct.ieee80211_csa_ie = type { i32, i32, i64, i32, i32 }

@IEEE80211_ELEMID_CSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211vap*)* @ieee80211_add_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_add_csa(i32* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_csa_ie*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 1
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.ieee80211_csa_ie*
  store %struct.ieee80211_csa_ie* %11, %struct.ieee80211_csa_ie** %6, align 8
  %12 = load i32, i32* @IEEE80211_ELEMID_CSA, align 4
  %13 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %15, i32 0, i32 0
  store i32 3, i32* %16, align 8
  %17 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %19, i32 %22)
  %24 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 24
  ret i32* %36
}

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
