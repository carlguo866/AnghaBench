; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wireless.c_asus_wireless_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wireless.c_asus_wireless_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.asus_wireless_data = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"event=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown ASHS event: %#x\0A\00", align 1
@KEY_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @asus_wireless_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_wireless_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asus_wireless_data*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.asus_wireless_data* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.asus_wireless_data* %7, %struct.asus_wireless_data** %5, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 136
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_notice(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %5, align 8
  %21 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @KEY_RFKILL, align 4
  %24 = call i32 @input_report_key(i32 %22, i32 %23, i32 1)
  %25 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %5, align 8
  %26 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @input_sync(i32 %27)
  %29 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %5, align 8
  %30 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KEY_RFKILL, align 4
  %33 = call i32 @input_report_key(i32 %31, i32 %32, i32 0)
  %34 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %5, align 8
  %35 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @input_sync(i32 %36)
  br label %38

38:                                               ; preds = %19, %14
  ret void
}

declare dso_local %struct.asus_wireless_data* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
