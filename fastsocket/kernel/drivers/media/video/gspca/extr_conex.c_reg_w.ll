; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_reg_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_reg_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@D_USBO = common dso_local global i32 0, align 4
@USB_BUF_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64, i32*, i64)* @reg_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w(%struct.gspca_dev* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.usb_device*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 1
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %9, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @memcpy(i32 %15, i32* %16, i64 %17)
  %19 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %21 = call i32 @usb_sndctrlpipe(%struct.usb_device* %20, i32 0)
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %26 = or i32 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @usb_control_msg(%struct.usb_device* %19, i32 %21, i32 0, i32 %26, i32 0, i64 %27, i32 %30, i64 %31, i32 500)
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
