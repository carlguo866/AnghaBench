; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_thermal.c_acpi_processor_get_limit_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_thermal.c_acpi_processor_get_limit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_get_limit_info(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %5 = icmp ne %struct.acpi_processor* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %9
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
