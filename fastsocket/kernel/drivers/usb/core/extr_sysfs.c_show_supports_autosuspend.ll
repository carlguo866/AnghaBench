; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_sysfs.c_show_supports_autosuspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_sysfs.c_show_supports_autosuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_supports_autosuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_supports_autosuspend(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.usb_interface* @to_usb_interface(%struct.device* %10)
  store %struct.usb_interface* %11, %struct.usb_interface** %7, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %8, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %15 = call i32 @usb_lock_device(%struct.usb_device* %14)
  %16 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_4__* @to_usb_driver(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21, %3
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %38 = call i32 @usb_unlock_device(%struct.usb_device* %37)
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local %struct.TYPE_4__* @to_usb_driver(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
