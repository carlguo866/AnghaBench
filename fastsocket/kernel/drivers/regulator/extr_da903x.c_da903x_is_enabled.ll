; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da903x_is_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da903x_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da903x_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da903x_regulator_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.da903x_regulator_info* %9, %struct.da903x_regulator_info** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call %struct.device* @to_da903x_dev(%struct.regulator_dev* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %14 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @da903x_read(%struct.device* %12, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %24 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
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
