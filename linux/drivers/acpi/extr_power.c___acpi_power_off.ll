; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c___acpi_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c___acpi_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_OFF\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Power resource [%s] turned off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_power_resource*)* @__acpi_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__acpi_power_off(%struct.acpi_power_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_power_resource*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_power_resource* %0, %struct.acpi_power_resource** %3, align 8
  %5 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @acpi_evaluate_object(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @ACPI_DB_INFO, align 4
  %18 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ACPI_DEBUG_PRINT(i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
