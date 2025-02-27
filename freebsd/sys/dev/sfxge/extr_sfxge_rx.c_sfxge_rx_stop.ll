; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_rx_stop(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %4 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @efx_mac_filter_default_rxq_clear(i32 %6)
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @sfxge_rx_qstop(%struct.sfxge_softc* %16, i32 %17)
  br label %11

19:                                               ; preds = %11
  %20 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %21 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @efx_rx_fini(i32 %26)
  ret void
}

declare dso_local i32 @efx_mac_filter_default_rxq_clear(i32) #1

declare dso_local i32 @sfxge_rx_qstop(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @efx_rx_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
