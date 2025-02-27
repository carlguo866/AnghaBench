; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_set_temp_hyst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_set_temp_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm78_data = type { i32, i32 }

@LM78_REG_TEMP_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lm78_data*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.lm78_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.lm78_data* %12, %struct.lm78_data** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @simple_strtol(i8* %13, i32* null, i32 10)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %16 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @TEMP_TO_REG(i64 %18)
  %20 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %21 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %23 = load i32, i32* @LM78_REG_TEMP_HYST, align 4
  %24 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %25 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lm78_write_value(%struct.lm78_data* %22, i32 %23, i32 %26)
  %28 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %29 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i64, i64* %8, align 8
  ret i64 %31
}

declare dso_local %struct.lm78_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @lm78_write_value(%struct.lm78_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
