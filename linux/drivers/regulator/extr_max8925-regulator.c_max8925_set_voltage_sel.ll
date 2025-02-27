; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.max8925_regulator_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8925_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max8925_regulator_info*, align 8
  %6 = alloca i8, align 1
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.max8925_regulator_info* %8, %struct.max8925_regulator_info** %5, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %6, align 1
  %16 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %5, align 8
  %17 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %5, align 8
  %20 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8, i8* %6, align 1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @max8925_set_bits(i32 %18, i32 %21, i8 zeroext %22, i32 %23)
  ret i32 %24
}

declare dso_local %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @max8925_set_bits(i32, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
