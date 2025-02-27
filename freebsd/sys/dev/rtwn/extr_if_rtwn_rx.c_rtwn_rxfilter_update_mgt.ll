; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_rxfilter_update_mgt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_rxfilter_update_mgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64, i64, i64 }

@IEEE80211_FC0_SUBTYPE_ASSOC_REQ = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_REASSOC_REQ = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_PROBE_REQ = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ASSOC_RESP = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_REASSOC_RESP = common dso_local global i32 0, align 4
@R92C_RXFLTMAP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_rxfilter_update_mgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_rxfilter_update_mgt(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  store i32 32639, i32* %3, align 4
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ASSOC_REQ, align 4
  %10 = call i32 @R92C_RXFLTMAP_SUBTYPE(i32 %9)
  %11 = load i32, i32* @IEEE80211_FC0_SUBTYPE_REASSOC_REQ, align 4
  %12 = call i32 @R92C_RXFLTMAP_SUBTYPE(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_REQ, align 4
  %15 = call i32 @R92C_RXFLTMAP_SUBTYPE(i32 %14)
  %16 = or i32 %13, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %8, %1
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = icmp eq i64 %23, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ASSOC_RESP, align 4
  %34 = call i32 @R92C_RXFLTMAP_SUBTYPE(i32 %33)
  %35 = load i32, i32* @IEEE80211_FC0_SUBTYPE_REASSOC_RESP, align 4
  %36 = call i32 @R92C_RXFLTMAP_SUBTYPE(i32 %35)
  %37 = or i32 %34, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %20
  %42 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %43 = load i32, i32* @R92C_RXFLTMAP0, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @rtwn_write_2(%struct.rtwn_softc* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @R92C_RXFLTMAP_SUBTYPE(i32) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
