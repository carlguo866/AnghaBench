; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_ult_lo_smps_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_ult_lo_smps_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { i32 }
%struct.spmi_voltage_range = type { i32 }

@SPMI_COMMON_REG_VOLTAGE_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ULT_SMPS_RANGE_SPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @spmi_regulator_ult_lo_smps_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_ult_lo_smps_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.spmi_regulator*, align 8
  %5 = alloca %struct.spmi_voltage_range*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.spmi_regulator* %8, %struct.spmi_regulator** %4, align 8
  %9 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %10 = load i32, i32* @SPMI_COMMON_REG_VOLTAGE_SET, align 4
  %11 = call i32 @spmi_vreg_read(%struct.spmi_regulator* %9, i32 %10, i32* %6, i32 1)
  %12 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %13 = call %struct.spmi_voltage_range* @spmi_regulator_find_range(%struct.spmi_regulator* %12)
  store %struct.spmi_voltage_range* %13, %struct.spmi_voltage_range** %5, align 8
  %14 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  %15 = icmp ne %struct.spmi_voltage_range* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  %21 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @ULT_SMPS_RANGE_SPLIT, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  %33 = call i32 @spmi_hw_selector_to_sw(%struct.spmi_regulator* %30, i32 %31, %struct.spmi_voltage_range* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @spmi_vreg_read(%struct.spmi_regulator*, i32, i32*, i32) #1

declare dso_local %struct.spmi_voltage_range* @spmi_regulator_find_range(%struct.spmi_regulator*) #1

declare dso_local i32 @spmi_hw_selector_to_sw(%struct.spmi_regulator*, i32, %struct.spmi_voltage_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
