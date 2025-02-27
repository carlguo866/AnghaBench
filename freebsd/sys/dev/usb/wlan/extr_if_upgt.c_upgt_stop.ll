; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32, i64 }

@UPGT_FLAG_INITDONE = common dso_local global i32 0, align 4
@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upgt_softc*)* @upgt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_stop(%struct.upgt_softc* %0) #0 {
  %2 = alloca %struct.upgt_softc*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %2, align 8
  %3 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %4 = call i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc* %3)
  %5 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @UPGT_FLAG_INITDONE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %13 = load i32, i32* @IEEE80211_S_INIT, align 4
  %14 = call i32 @upgt_set_macfilter(%struct.upgt_softc* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %17 = call i32 @upgt_abort_xfers_locked(%struct.upgt_softc* %16)
  %18 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %19 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @UPGT_FLAG_INITDONE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  ret void
}

declare dso_local i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_set_macfilter(%struct.upgt_softc*, i32) #1

declare dso_local i32 @upgt_abort_xfers_locked(%struct.upgt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
