; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_update_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_update_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @ath_update_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_update_mcast(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 0
  %6 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  store %struct.ath_softc* %6, %struct.ath_softc** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = call i32 @ATH_LOCK(%struct.ath_softc* %7)
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = load i32, i32* @HAL_PM_AWAKE, align 4
  %11 = call i32 @ath_power_set_power_state(%struct.ath_softc* %9, i32 %10)
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = call i32 @ATH_UNLOCK(%struct.ath_softc* %12)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = call i32 @ath_update_mcast_hw(%struct.ath_softc* %14)
  %16 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %17 = call i32 @ATH_LOCK(%struct.ath_softc* %16)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = call i32 @ATH_UNLOCK(%struct.ath_softc* %20)
  ret void
}

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_update_mcast_hw(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
