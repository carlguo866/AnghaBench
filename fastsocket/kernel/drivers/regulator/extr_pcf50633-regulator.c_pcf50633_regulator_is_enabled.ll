; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_is_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.pcf50633 = type { i32 }

@PCF50633_NUM_REGULATORS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pcf50633_regulator_registers = common dso_local global i64* null, align 8
@PCF50633_REGULATOR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @pcf50633_regulator_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_regulator_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.pcf50633* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.pcf50633* %8, %struct.pcf50633** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PCF50633_NUM_REGULATORS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i64*, i64** @pcf50633_regulator_registers, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %6, align 8
  %26 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @pcf50633_reg_read(%struct.pcf50633* %26, i64 %27)
  %29 = load i32, i32* @PCF50633_REGULATOR_ON, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.pcf50633* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @pcf50633_reg_read(%struct.pcf50633*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
