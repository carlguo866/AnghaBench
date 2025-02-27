; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_send_video_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_send_video_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i32 }

@SET_EP_STREAM_CTL = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@VIDEO_OUTPUT_CONTROL_FORMATTER = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"send_video_command error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i8*, i32)* @send_video_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_video_command(%struct.pwc_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @memcpy(i32 %12, i8* %13, i32 %14)
  %16 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %17 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %20 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndctrlpipe(i32 %21, i32 0)
  %23 = load i32, i32* @SET_EP_STREAM_CTL, align 4
  %24 = load i32, i32* @USB_DIR_OUT, align 4
  %25 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VIDEO_OUTPUT_CONTROL_FORMATTER, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %32 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %36 = call i32 @usb_control_msg(i32 %18, i32 %22, i32 %23, i32 %28, i32 %29, i32 %30, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %41 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i32 %42, i8* %43, i32 %44)
  br label %49

46:                                               ; preds = %4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @PWC_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
