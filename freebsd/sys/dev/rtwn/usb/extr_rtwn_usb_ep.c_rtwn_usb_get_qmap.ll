; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_ep.c_rtwn_usb_get_qmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_ep.c_rtwn_usb_get_qmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_usb_softc = type { i32 }

@R92C_TRXDMA_CTRL_QMAP_HQ = common dso_local global i32 0, align 4
@R92C_TRXDMA_CTRL_QMAP_HQ_NQ = common dso_local global i32 0, align 4
@R92C_TRXDMA_CTRL_QMAP_3EP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtwn_usb_get_qmap(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.rtwn_usb_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %6 = call %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc* %5)
  store %struct.rtwn_usb_softc* %6, %struct.rtwn_usb_softc** %4, align 8
  %7 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %8 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %14 [
    i32 1, label %10
    i32 2, label %12
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @R92C_TRXDMA_CTRL_QMAP_HQ, align 4
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @R92C_TRXDMA_CTRL_QMAP_HQ_NQ, align 4
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @R92C_TRXDMA_CTRL_QMAP_3EP, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %12, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
