; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_get_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_get_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RQ_VENDOR_GET_VERSION = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32*)* @mxuport_get_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_get_fw_version(%struct.usb_serial* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32* @kzalloc(i32 4, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %17 = load i32, i32* @RQ_VENDOR_GET_VERSION, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @mxuport_recv_ctrl_urb(%struct.usb_serial* %16, i32 %17, i32 0, i32 0, i32* %18, i32 4)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %40

25:                                               ; preds = %15
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %25, %22
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mxuport_recv_ctrl_urb(%struct.usb_serial*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
