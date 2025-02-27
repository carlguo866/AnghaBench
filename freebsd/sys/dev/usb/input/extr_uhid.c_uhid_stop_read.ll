; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_stop_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_stop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uhid_softc = type { i32* }

@UHID_CTRL_DT_RD = common dso_local global i64 0, align 8
@UHID_INTR_DT_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_fifo*)* @uhid_stop_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_stop_read(%struct.usb_fifo* %0) #0 {
  %2 = alloca %struct.usb_fifo*, align 8
  %3 = alloca %struct.uhid_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %2, align 8
  %4 = load %struct.usb_fifo*, %struct.usb_fifo** %2, align 8
  %5 = call %struct.uhid_softc* @usb_fifo_softc(%struct.usb_fifo* %4)
  store %struct.uhid_softc* %5, %struct.uhid_softc** %3, align 8
  %6 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @UHID_CTRL_DT_RD, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usbd_transfer_stop(i32 %11)
  %13 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @UHID_INTR_DT_RD, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usbd_transfer_stop(i32 %18)
  ret void
}

declare dso_local %struct.uhid_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
