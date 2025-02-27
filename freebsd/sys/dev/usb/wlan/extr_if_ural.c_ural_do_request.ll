; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_do_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i32, i32 }
%struct.usb_device_request = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Control request failed, %s (retrying)\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ural_softc*, %struct.usb_device_request*, i8*)* @ural_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ural_do_request(%struct.ural_softc* %0, %struct.usb_device_request* %1, i8* %2) #0 {
  %4 = alloca %struct.ural_softc*, align 8
  %5 = alloca %struct.usb_device_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %4, align 8
  store %struct.usb_device_request* %1, %struct.usb_device_request** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 10, i32* %8, align 4
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.ural_softc*, %struct.ural_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ural_softc*, %struct.ural_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %17, i32 0, i32 0
  %19 = load %struct.usb_device_request*, %struct.usb_device_request** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @usbd_do_request_flags(i32 %16, i32* %18, %struct.usb_device_request* %19, i8* %20, i32 0, i32* null, i32 250)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %36

25:                                               ; preds = %13
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @usbd_errstr(i64 %26)
  %28 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.ural_softc*, %struct.ural_softc** %4, align 8
  %30 = load i32, i32* @hz, align 4
  %31 = sdiv i32 %30, 100
  %32 = call i64 @ural_pause(%struct.ural_softc* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %36

35:                                               ; preds = %25
  br label %9

36:                                               ; preds = %34, %24, %9
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local i64 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i64 @ural_pause(%struct.ural_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
