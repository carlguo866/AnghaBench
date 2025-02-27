; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_set_in_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_set_in_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm78_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_in_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_in_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.lm78_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute* %14, %struct.sensor_device_attribute** %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.lm78_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.lm78_data* %16, %struct.lm78_data** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @simple_strtoul(i8* %17, i32* null, i32 10)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.lm78_data*, %struct.lm78_data** %10, align 8
  %23 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @IN_TO_REG(i64 %25)
  %27 = load %struct.lm78_data*, %struct.lm78_data** %10, align 8
  %28 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.lm78_data*, %struct.lm78_data** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @LM78_REG_IN_MIN(i32 %34)
  %36 = load %struct.lm78_data*, %struct.lm78_data** %10, align 8
  %37 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lm78_write_value(%struct.lm78_data* %33, i32 %35, i32 %42)
  %44 = load %struct.lm78_data*, %struct.lm78_data** %10, align 8
  %45 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i64, i64* %8, align 8
  ret i64 %47
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm78_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IN_TO_REG(i64) #1

declare dso_local i32 @lm78_write_value(%struct.lm78_data*, i32, i32) #1

declare dso_local i32 @LM78_REG_IN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
