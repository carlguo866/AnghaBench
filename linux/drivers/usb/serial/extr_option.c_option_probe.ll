; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_option.c_option_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_option.c_option_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i64, i32, i32 }
%struct.usb_device_id = type { i64 }

@USB_CLASS_MASS_STORAGE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NUMEP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @option_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_interface_descriptor*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.usb_interface_descriptor* %13, %struct.usb_interface_descriptor** %6, align 8
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %18 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_CLASS_MASS_STORAGE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %28 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @RSVD(i32 %29)
  %31 = and i64 %26, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %54

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @NUMEP2, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %43 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %41, %36
  %50 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @usb_set_serial_data(%struct.usb_serial* %50, i8* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %46, %33, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @RSVD(i32) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
