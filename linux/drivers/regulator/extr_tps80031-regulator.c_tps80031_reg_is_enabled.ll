; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_reg_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_reg_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps80031_regulator = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@TPS80031_EXT_PWR_REQ = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Reg 0x%02x read failed, err = %d\0A\00", align 1
@TPS80031_STATE_MASK = common dso_local global i32 0, align 4
@TPS80031_STATE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps80031_reg_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_reg_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps80031_regulator*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.tps80031_regulator* %9, %struct.tps80031_regulator** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call %struct.device* @to_tps80031_dev(%struct.regulator_dev* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TPS80031_EXT_PWR_REQ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %22 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %23 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tps80031_read(%struct.device* %20, i32 %21, i32 %26, i32* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 0
  %33 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %34 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %19
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TPS80031_STATE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @TPS80031_STATE_ON, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %30, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_tps80031_dev(%struct.regulator_dev*) #1

declare dso_local i32 @tps80031_read(%struct.device*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
