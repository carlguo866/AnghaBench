; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt8231.c_set_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt8231.c_set_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.vt8231_data = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vt8231_data*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute* %14, %struct.sensor_device_attribute** %9, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.vt8231_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.vt8231_data* %19, %struct.vt8231_data** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @simple_strtoul(i8* %20, i32* null, i32 10)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.vt8231_data*, %struct.vt8231_data** %11, align 8
  %23 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %11, align 8
  %27 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DIV_FROM_REG(i32 %32)
  %34 = call i32 @FAN_TO_REG(i32 %25, i32 %33)
  %35 = load %struct.vt8231_data*, %struct.vt8231_data** %11, align 8
  %36 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.vt8231_data*, %struct.vt8231_data** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @VT8231_REG_FAN_MIN(i32 %42)
  %44 = load %struct.vt8231_data*, %struct.vt8231_data** %11, align 8
  %45 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vt8231_write_value(%struct.vt8231_data* %41, i32 %43, i32 %50)
  %52 = load %struct.vt8231_data*, %struct.vt8231_data** %11, align 8
  %53 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i64, i64* %8, align 8
  ret i64 %55
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.vt8231_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FAN_TO_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @vt8231_write_value(%struct.vt8231_data*, i32, i32) #1

declare dso_local i32 @VT8231_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
