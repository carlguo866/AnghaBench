; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_maxmin_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_maxmin_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm73_data = type { i32, i32, i32 }

@LM73_REG_CTRL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @maxmin_alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maxmin_alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.lm73_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute* %12, %struct.sensor_device_attribute** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.lm73_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.lm73_data* %14, %struct.lm73_data** %9, align 8
  %15 = load %struct.lm73_data*, %struct.lm73_data** %9, align 8
  %16 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.lm73_data*, %struct.lm73_data** %9, align 8
  %19 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LM73_REG_CTRL, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.lm73_data*, %struct.lm73_data** %9, align 8
  %29 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.lm73_data*, %struct.lm73_data** %9, align 8
  %31 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %37 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %35, %38
  %40 = and i32 %39, 1
  %41 = call i32 @scnprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %25
  %43 = load %struct.lm73_data*, %struct.lm73_data** %9, align 8
  %44 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm73_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
