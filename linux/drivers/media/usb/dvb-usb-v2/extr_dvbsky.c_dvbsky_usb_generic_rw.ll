; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_usb_generic_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_usb_generic_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.dvbsky_state = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i64, i32*, i64)* @dvbsky_usb_generic_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dvbsky_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %14 = call %struct.dvbsky_state* @d_to_priv(%struct.dvb_usb_device* %13)
  store %struct.dvbsky_state* %14, %struct.dvbsky_state** %12, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.dvbsky_state*, %struct.dvbsky_state** %12, align 8
  %22 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @memcpy(i32* %23, i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %20, %5
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %29 = load %struct.dvbsky_state*, %struct.dvbsky_state** %12, align 8
  %30 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.dvbsky_state*, %struct.dvbsky_state** %12, align 8
  %34 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device* %28, i32* %31, i64 %32, i32* %35, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.dvbsky_state*, %struct.dvbsky_state** %12, align 8
  %46 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @memcpy(i32* %44, i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %43, %40, %27
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local %struct.dvbsky_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device*, i32*, i64, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
