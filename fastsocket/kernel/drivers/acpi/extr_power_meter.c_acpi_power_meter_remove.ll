; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_acpi_power_meter_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_acpi_power_meter_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_power_meter_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_power_meter_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_power_meter_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_power_meter_resource*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = call %struct.acpi_power_meter_resource* @acpi_driver_data(%struct.acpi_device* %10)
  %12 = icmp ne %struct.acpi_power_meter_resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %9
  %17 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %18 = call %struct.acpi_power_meter_resource* @acpi_driver_data(%struct.acpi_device* %17)
  store %struct.acpi_power_meter_resource* %18, %struct.acpi_power_meter_resource** %6, align 8
  %19 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hwmon_device_unregister(i32 %21)
  %23 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %6, align 8
  %24 = call i32 @free_capabilities(%struct.acpi_power_meter_resource* %23)
  %25 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %6, align 8
  %26 = call i32 @remove_attrs(%struct.acpi_power_meter_resource* %25)
  %27 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %6, align 8
  %28 = call i32 @kfree(%struct.acpi_power_meter_resource* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.acpi_power_meter_resource* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @free_capabilities(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @remove_attrs(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @kfree(%struct.acpi_power_meter_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
