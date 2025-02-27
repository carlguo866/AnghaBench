; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_show_dock_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_show_dock_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dock_station* }
%struct.dock_station = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_dock_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_dock_uid(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dock_station*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.dock_station*, %struct.dock_station** %12, align 8
  store %struct.dock_station* %13, %struct.dock_station** %9, align 8
  %14 = load %struct.dock_station*, %struct.dock_station** %9, align 8
  %15 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @acpi_evaluate_integer(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
