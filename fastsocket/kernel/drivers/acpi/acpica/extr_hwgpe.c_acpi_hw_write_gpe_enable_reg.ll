; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_write_gpe_enable_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_write_gpe_enable_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_register_info = type { i32, i32 }

@AE_NOT_EXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_write_gpe_enable_reg(%struct.acpi_gpe_event_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_gpe_event_info*, align 8
  %4 = alloca %struct.acpi_gpe_register_info*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %3, align 8
  %6 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %7 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %7, i32 0, i32 0
  %9 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %8, align 8
  store %struct.acpi_gpe_register_info* %9, %struct.acpi_gpe_register_info** %4, align 8
  %10 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %11 = icmp ne %struct.acpi_gpe_register_info* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %18, i32 0, i32 0
  %20 = call i32 @acpi_hw_write(i32 %17, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_hw_write(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
