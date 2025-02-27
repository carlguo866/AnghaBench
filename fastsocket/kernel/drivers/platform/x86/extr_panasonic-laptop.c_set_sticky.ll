; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_set_sticky.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_set_sticky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_device = type { i32 }
%struct.pcc_acpi = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@SINF_STICKY_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_sticky to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_sticky(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_device*, align 8
  %10 = alloca %struct.pcc_acpi*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.acpi_device* @to_acpi_device(%struct.device* %12)
  store %struct.acpi_device* %13, %struct.acpi_device** %9, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %15 = call %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device* %14)
  store %struct.pcc_acpi* %15, %struct.pcc_acpi** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %25, %22
  %29 = load %struct.pcc_acpi*, %struct.pcc_acpi** %10, align 8
  %30 = load i32, i32* @SINF_STICKY_KEY, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @acpi_pcc_write_sset(%struct.pcc_acpi* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.pcc_acpi*, %struct.pcc_acpi** %10, align 8
  %35 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %25, %18, %4
  %37 = load i64, i64* %8, align 8
  ret i64 %37
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @acpi_pcc_write_sset(%struct.pcc_acpi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
