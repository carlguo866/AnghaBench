; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_show_amb_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_show_amb_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i5k_amb_data = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_amb_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_amb_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.i5k_amb_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %10 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %9)
  store %struct.sensor_device_attribute* %10, %struct.sensor_device_attribute** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i5k_amb_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.i5k_amb_data* %12, %struct.i5k_amb_data** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %8, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @amb_reg_temp(i32 %17)
  %19 = call i32 @amb_read_byte(%struct.i5k_amb_data* %14, i32 %18)
  %20 = mul nsw i32 500, %19
  %21 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  ret i32 %21
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i5k_amb_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @amb_read_byte(%struct.i5k_amb_data*, i32) #1

declare dso_local i32 @amb_reg_temp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
