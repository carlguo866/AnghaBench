; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"onoff = %d\0A\00", align 1
@UCOM_LS_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @ucom_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_ring(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %11 = load i32, i32* @UCOM_LS_RING, align 4
  %12 = call i32 @ucom_line_state(%struct.ucom_softc* %10, i32 %11, i32 0)
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %15 = load i32, i32* @UCOM_LS_RING, align 4
  %16 = call i32 @ucom_line_state(%struct.ucom_softc* %14, i32 0, i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @ucom_line_state(%struct.ucom_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
