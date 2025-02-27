; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_find_companion_for_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_find_companion_for_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32* }
%struct.usb_port = type { i32, i32 }
%struct.acpi_pld_info = type { i32, i32 }

@USB_ACPI_LOCATION_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device* (%struct.usb_port*)* @usb_acpi_find_companion_for_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device* @usb_acpi_find_companion_for_port(%struct.usb_port* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.usb_port*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_pld_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_port* %0, %struct.usb_port** %3, align 8
  %8 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %9 = call %struct.acpi_device* @usb_acpi_get_companion_for_port(%struct.usb_port* %8)
  store %struct.acpi_device* %9, %struct.acpi_device** %4, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = icmp ne %struct.acpi_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.acpi_device* null, %struct.acpi_device** %2, align 8
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @acpi_get_physical_device_location(i32* %17, %struct.acpi_pld_info** %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %13
  %23 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %24 = icmp ne %struct.acpi_pld_info* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* @USB_ACPI_LOCATION_VALID, align 4
  %27 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %26, %30
  %32 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %37 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %40 = call i32 @usb_acpi_get_connect_type(i32* %38, %struct.acpi_pld_info* %39)
  %41 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %42 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %44 = call i32 @ACPI_FREE(%struct.acpi_pld_info* %43)
  br label %45

45:                                               ; preds = %25, %22, %13
  %46 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  store %struct.acpi_device* %46, %struct.acpi_device** %2, align 8
  br label %47

47:                                               ; preds = %45, %12
  %48 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  ret %struct.acpi_device* %48
}

declare dso_local %struct.acpi_device* @usb_acpi_get_companion_for_port(%struct.usb_port*) #1

declare dso_local i32 @acpi_get_physical_device_location(i32*, %struct.acpi_pld_info**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @usb_acpi_get_connect_type(i32*, %struct.acpi_pld_info*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_pld_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
