; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da903x_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da903x_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.da903x_regulator_info = type { i32, i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da903x_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da903x_regulator_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.da903x_regulator_info* %10, %struct.da903x_regulator_info** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call %struct.device* @to_da903x_dev(%struct.regulator_dev* %11)
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %23 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @da903x_read(%struct.device* %21, i32 %24, i32* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %32 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %37 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %44 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %30, %28, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_da903x_dev(%struct.regulator_dev*) #1

declare dso_local i32 @da903x_read(%struct.device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
