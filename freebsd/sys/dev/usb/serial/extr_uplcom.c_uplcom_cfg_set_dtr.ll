; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_cfg_set_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_cfg_set_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uplcom_softc* }
%struct.uplcom_softc = type { i32, i32, i64, i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"onoff = %d\0A\00", align 1
@UCDC_LINE_DTR = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uplcom_cfg_set_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uplcom_cfg_set_dtr(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uplcom_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.uplcom_softc*, %struct.uplcom_softc** %8, align 8
  store %struct.uplcom_softc* %9, %struct.uplcom_softc** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @UCDC_LINE_DTR, align 4
  %16 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %17 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @UCDC_LINE_DTR, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %24 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @UCDC_SET_CONTROL_LINE_STATE, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %35 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @USETW(i32 %33, i32 %36)
  %38 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %39 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %40, i64* %43, align 8
  %44 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @USETW(i32 %48, i32 0)
  %50 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %51 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %54 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %53, i32 0, i32 0
  %55 = call i32 @ucom_cfg_do_request(i32 %52, i32* %54, %struct.usb_device_request* %6, i32* null, i32 0, i32 1000)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
