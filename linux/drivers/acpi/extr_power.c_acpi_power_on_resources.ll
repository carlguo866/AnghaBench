; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c_acpi_power_on_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c_acpi_power_on_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3_HOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_power_on_resources(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ACPI_STATE_D0, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ACPI_STATE_D3_HOT, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %8, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @acpi_power_on_list(i32* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @acpi_power_on_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
