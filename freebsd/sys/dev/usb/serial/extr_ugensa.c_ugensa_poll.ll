; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ugensa.c_ugensa_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ugensa.c_ugensa_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32, %struct.ugensa_softc* }
%struct.ugensa_softc = type { %struct.ugensa_sub_softc* }
%struct.ugensa_sub_softc = type { i32 }

@UGENSA_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @ugensa_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ugensa_poll(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.ugensa_softc*, align 8
  %4 = alloca %struct.ugensa_sub_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %5 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %5, i32 0, i32 1
  %7 = load %struct.ugensa_softc*, %struct.ugensa_softc** %6, align 8
  store %struct.ugensa_softc* %7, %struct.ugensa_softc** %3, align 8
  %8 = load %struct.ugensa_softc*, %struct.ugensa_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ugensa_softc, %struct.ugensa_softc* %8, i32 0, i32 0
  %10 = load %struct.ugensa_sub_softc*, %struct.ugensa_sub_softc** %9, align 8
  %11 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ugensa_sub_softc, %struct.ugensa_sub_softc* %10, i64 %14
  store %struct.ugensa_sub_softc* %15, %struct.ugensa_sub_softc** %4, align 8
  %16 = load %struct.ugensa_sub_softc*, %struct.ugensa_sub_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ugensa_sub_softc, %struct.ugensa_sub_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UGENSA_N_TRANSFER, align 4
  %20 = call i32 @usbd_transfer_poll(i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @usbd_transfer_poll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
