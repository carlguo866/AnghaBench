; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_update_gpe_enable_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_update_gpe_enable_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i64, %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_register_info = type { i32, i32 }

@ev_update_gpe_enable_mask = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_update_gpe_enable_mask(%struct.acpi_gpe_event_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_gpe_event_info*, align 8
  %4 = alloca %struct.acpi_gpe_register_info*, align 8
  %5 = alloca i64, align 8
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %3, align 8
  %6 = load i32, i32* @ev_update_gpe_enable_mask, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %8, i32 0, i32 1
  %10 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %9, align 8
  store %struct.acpi_gpe_register_info* %10, %struct.acpi_gpe_register_info** %4, align 8
  %11 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %12 = icmp ne %struct.acpi_gpe_register_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @AE_NOT_EXIST, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %18 = call i64 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ACPI_CLEAR_BIT(i32 %21, i64 %22)
  %24 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @ACPI_SET_BIT(i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %16
  %36 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @AE_OK, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info*) #1

declare dso_local i32 @ACPI_CLEAR_BIT(i32, i64) #1

declare dso_local i32 @ACPI_SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
