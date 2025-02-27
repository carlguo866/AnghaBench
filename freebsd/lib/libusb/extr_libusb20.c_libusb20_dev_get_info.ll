; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.usb_device_info = type { i32 }

@LIBUSB20_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_dev_get_info(%struct.libusb20_device* %0, %struct.usb_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca %struct.usb_device_info*, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store %struct.usb_device_info* %1, %struct.usb_device_info** %5, align 8
  %6 = load %struct.usb_device_info*, %struct.usb_device_info** %5, align 8
  %7 = icmp eq %struct.usb_device_info* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @LIBUSB20_ERROR_INVALID_PARAM, align 4
  store i32 %9, i32* %3, align 4
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %12 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.libusb20_device*, %struct.usb_device_info*)**
  %16 = load i32 (%struct.libusb20_device*, %struct.usb_device_info*)*, i32 (%struct.libusb20_device*, %struct.usb_device_info*)** %15, align 8
  %17 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %18 = load %struct.usb_device_info*, %struct.usb_device_info** %5, align 8
  %19 = call i32 %16(%struct.libusb20_device* %17, %struct.usb_device_info* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %10, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
