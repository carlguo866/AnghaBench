; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_device_id* @acpi_match_device(%struct.acpi_device_id* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.acpi_device_id*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.acpi_device_id*, align 8
  store %struct.acpi_device_id* %0, %struct.acpi_device_id** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  store %struct.acpi_device_id* null, %struct.acpi_device_id** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = call i32 @acpi_companion_match(%struct.device* %6)
  %8 = load %struct.acpi_device_id*, %struct.acpi_device_id** %3, align 8
  %9 = call i32 @__acpi_match_device(i32 %7, %struct.acpi_device_id* %8, i32* null, %struct.acpi_device_id** %5, i32* null)
  %10 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  ret %struct.acpi_device_id* %10
}

declare dso_local i32 @__acpi_match_device(i32, %struct.acpi_device_id*, i32*, %struct.acpi_device_id**, i32*) #1

declare dso_local i32 @acpi_companion_match(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
