; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_update_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_update_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.urtw_softc* }
%struct.urtw_softc = type { i32 }

@URTW_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @urtw_update_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_update_promisc(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.urtw_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 0
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  store %struct.urtw_softc* %6, %struct.urtw_softc** %3, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %8 = call i32 @URTW_LOCK(%struct.urtw_softc* %7)
  %9 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %10 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @URTW_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %17 = call i32 @urtw_rx_setconf(%struct.urtw_softc* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %20 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %19)
  ret void
}

declare dso_local i32 @URTW_LOCK(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_rx_setconf(%struct.urtw_softc*) #1

declare dso_local i32 @URTW_UNLOCK(%struct.urtw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
