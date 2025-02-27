; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_battery_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_battery_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.acpi_battery = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@info_readers = common dso_local global %struct.TYPE_5__* null, align 8
@ACPI_SBS_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_get_info(%struct.acpi_battery* %0) #0 {
  %2 = alloca %struct.acpi_battery*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.acpi_battery* %0, %struct.acpi_battery** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @info_readers, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %5
  %11 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @info_readers, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACPI_SBS_BATTERY, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @info_readers, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.acpi_battery*, %struct.acpi_battery** %2, align 8
  %30 = bitcast %struct.acpi_battery* %29 to i32*
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @info_readers, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  %39 = call i32 @acpi_smbus_read(i32 %15, i32 %21, i32 %22, i32 %28, i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %10
  br label %47

43:                                               ; preds = %10
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %42, %5
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @acpi_smbus_read(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
