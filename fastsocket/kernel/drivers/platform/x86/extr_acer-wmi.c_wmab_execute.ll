; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_wmab_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_wmab_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmab_args = type { i32 }
%struct.acpi_buffer = type { i32, i32* }

@AMW0_GUID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmab_args*, %struct.acpi_buffer*)* @wmab_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmab_execute(%struct.wmab_args* %0, %struct.acpi_buffer* %1) #0 {
  %3 = alloca %struct.wmab_args*, align 8
  %4 = alloca %struct.acpi_buffer*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca i32, align 4
  store %struct.wmab_args* %0, %struct.wmab_args** %3, align 8
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = load %struct.wmab_args*, %struct.wmab_args** %3, align 8
  %9 = bitcast %struct.wmab_args* %8 to i32*
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* %9, i32** %10, align 8
  %11 = load i32, i32* @AMW0_GUID1, align 4
  %12 = load %struct.acpi_buffer*, %struct.acpi_buffer** %4, align 8
  %13 = call i32 @wmi_evaluate_method(i32 %11, i32 1, i32 1, %struct.acpi_buffer* %5, %struct.acpi_buffer* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  ret i32 %14
}

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
