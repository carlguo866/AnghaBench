; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_set_voltage_time_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_set_voltage_time_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @spmi_regulator_set_voltage_time_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_set_voltage_time_sel(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spmi_regulator*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.spmi_regulator* %10, %struct.spmi_regulator** %7, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @spmi_regulator_common_list_voltage(%struct.regulator_dev* %11, i32 %12)
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @spmi_regulator_common_list_voltage(%struct.regulator_dev* %14, i32 %15)
  %17 = sub nsw i64 %13, %16
  %18 = call i32 @abs(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.spmi_regulator*, %struct.spmi_regulator** %7, align 8
  %21 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DIV_ROUND_UP(i32 %19, i32 %22)
  ret i32 %23
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i64 @spmi_regulator_common_list_voltage(%struct.regulator_dev*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
