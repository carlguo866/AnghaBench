; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_write_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_write_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.rmi_data = type { i32 }

@RMI_DEVICE_OUTPUT_SET_REPORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to write hid report (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32*, i32)* @rmi_write_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_write_report(%struct.hid_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmi_data*, align 8
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %11 = call %struct.rmi_data* @hid_get_drvdata(%struct.hid_device* %10)
  store %struct.rmi_data* %11, %struct.rmi_data** %8, align 8
  %12 = load %struct.rmi_data*, %struct.rmi_data** %8, align 8
  %13 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RMI_DEVICE_OUTPUT_SET_REPORT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %26 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %27 = call i32 @hid_hw_raw_request(%struct.hid_device* %19, i32 %22, i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @hid_hw_output_report(%struct.hid_device* %29, i8* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 0
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.rmi_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @hid_hw_output_report(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
