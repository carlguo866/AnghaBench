; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_disable_tsf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_disable_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@RT2860_BCN_TIME_CFG = common dso_local global i32 0, align 4
@RT2860_BCN_TX_EN = common dso_local global i32 0, align 4
@RT2860_TSF_TIMER_EN = common dso_local global i32 0, align 4
@RT2860_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_disable_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_disable_tsf(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %4 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %5 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %6 = call i64 @run_read(%struct.run_softc* %4, i32 %5, i32* %3)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @RT2860_BCN_TX_EN, align 4
  %10 = load i32, i32* @RT2860_TSF_TIMER_EN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RT2860_TBTT_TIMER_EN, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %18 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @run_write(%struct.run_softc* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
