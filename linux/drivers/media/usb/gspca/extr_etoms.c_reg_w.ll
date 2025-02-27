; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_reg_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_reg_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_BUF_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"reg_w: buffer overflow\0A\00", align 1
@D_USBO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"reg write [%02x] = %02x..\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
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
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @USB_BUF_SZ, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %45

18:                                               ; preds = %4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %20 = load i32, i32* @D_USBO, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gspca_dbg(%struct.gspca_dev* %19, i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %21, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @memcpy(i32 %27, i32* %28, i64 %29)
  %31 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %33 = call i32 @usb_sndctrlpipe(%struct.usb_device* %32, i32 0)
  %34 = load i32, i32* @USB_DIR_OUT, align 4
  %35 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %38 = or i32 %36, %37
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @usb_control_msg(%struct.usb_device* %31, i32 %33, i32 0, i32 %38, i32 0, i64 %39, i32 %42, i64 %43, i32 500)
  br label %45

45:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
