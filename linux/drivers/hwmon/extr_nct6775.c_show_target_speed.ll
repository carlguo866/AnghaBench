; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_show_target_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_show_target_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i32*, i32* }
%struct.sensor_device_attribute = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_target_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_target_speed(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nct6775_data*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.nct6775_data* @nct6775_update_device(%struct.device* %10)
  store %struct.nct6775_data* %11, %struct.nct6775_data** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %8, align 8
  %14 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %15 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.nct6775_data*, %struct.nct6775_data** %7, align 8
  %19 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nct6775_data*, %struct.nct6775_data** %7, align 8
  %26 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fan_from_reg16(i32 %24, i32 %31)
  %33 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  ret i32 %33
}

declare dso_local %struct.nct6775_data* @nct6775_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @fan_from_reg16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
