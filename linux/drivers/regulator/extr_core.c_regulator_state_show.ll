; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.regulator_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @regulator_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.regulator_dev* @dev_get_drvdata(%struct.device* %9)
  store %struct.regulator_dev* %10, %struct.regulator_dev** %7, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %12 = call i32 @regulator_lock(%struct.regulator_dev* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %15 = call i32 @_regulator_is_enabled(%struct.regulator_dev* %14)
  %16 = call i32 @regulator_print_state(i8* %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %18 = call i32 @regulator_unlock(%struct.regulator_dev* %17)
  %19 = load i32, i32* %8, align 4
  ret i32 %19
}

declare dso_local %struct.regulator_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_print_state(i8*, i32) #1

declare dso_local i32 @_regulator_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
