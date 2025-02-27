; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32*, i32, i64)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.usb_device* %0, i32 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i64, i64* %11, align 8
  %18 = icmp ule i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %57

22:                                               ; preds = %16
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i64 %23, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %57

31:                                               ; preds = %22
  %32 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %34 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %33, i32 0)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @USB_DIR_IN, align 4
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = call i32 @usb_control_msg(%struct.usb_device* %32, i32 %34, i32 %35, i32 %40, i32 %41, i32 0, i8* %42, i64 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @memcpy(i32* %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %31
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %28, %19
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
