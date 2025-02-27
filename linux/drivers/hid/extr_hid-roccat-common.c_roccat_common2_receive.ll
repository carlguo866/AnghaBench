; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-common.c_roccat_common2_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-common.c_roccat_common2_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @roccat_common2_receive(%struct.usb_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %58

20:                                               ; preds = %4
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %22, i32 0)
  %24 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %25 = load i32, i32* @USB_TYPE_CLASS, align 4
  %26 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_DIR_IN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @roccat_common2_feature_report(i32 %30)
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %35 = call i32 @usb_control_msg(%struct.usb_device* %21, i32 %23, i32 %24, i32 %29, i32 %31, i32 0, i8* %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = load i32, i32* %11, align 4
  br label %56

46:                                               ; preds = %20
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  br label %56

56:                                               ; preds = %54, %44
  %57 = phi i32 [ %45, %44 ], [ %55, %54 ]
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @roccat_common2_feature_report(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
