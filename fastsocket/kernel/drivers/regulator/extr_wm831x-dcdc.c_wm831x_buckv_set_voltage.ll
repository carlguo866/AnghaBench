; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { i64 }

@WM831X_DCDC_ON_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm831x_buckv_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_buckv_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm831x_dcdc*, align 8
  %8 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.wm831x_dcdc* %10, %struct.wm831x_dcdc** %7, align 8
  %11 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %7, align 8
  %12 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WM831X_DCDC_ON_CONFIG, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @wm831x_buckv_set_voltage_int(%struct.regulator_dev* %16, i64 %17, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_buckv_set_voltage_int(%struct.regulator_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
