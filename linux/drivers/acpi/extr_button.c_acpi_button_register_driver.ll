; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_button_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_button_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_driver = type { i32 }

@acpi_disabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_driver*)* @acpi_button_register_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_button_register_driver(%struct.acpi_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_driver*, align 8
  store %struct.acpi_driver* %0, %struct.acpi_driver** %3, align 8
  %4 = load i64, i64* @acpi_disabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.acpi_driver*, %struct.acpi_driver** %3, align 8
  %9 = call i32 @acpi_bus_register_driver(%struct.acpi_driver* %8)
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

declare dso_local i32 @acpi_bus_register_driver(%struct.acpi_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
