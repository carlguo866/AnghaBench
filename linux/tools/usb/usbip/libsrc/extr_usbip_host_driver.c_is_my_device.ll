; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_driver.c_is_my_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_driver.c_is_my_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }

@USBIP_HOST_DRV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udev_device*)* @is_my_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_my_device(%struct.udev_device* %0) #0 {
  %2 = alloca %struct.udev_device*, align 8
  %3 = alloca i8*, align 8
  store %struct.udev_device* %0, %struct.udev_device** %2, align 8
  %4 = load %struct.udev_device*, %struct.udev_device** %2, align 8
  %5 = call i8* @udev_device_get_driver(%struct.udev_device* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @USBIP_HOST_DRV_NAME, align 4
  %11 = call i32 @strcmp(i8* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i8* @udev_device_get_driver(%struct.udev_device*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
