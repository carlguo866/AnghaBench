; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_temp_crit_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_temp_crit_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.k10temp_data = type { i32, i32 (i32, i32*)* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_crit_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_crit_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.k10temp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %7, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.k10temp_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.k10temp_data* %15, %struct.k10temp_data** %8, align 8
  %16 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %20 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %19, i32 0, i32 1
  %21 = load i32 (i32, i32*)*, i32 (i32, i32*)** %20, align 8
  %22 = load %struct.k10temp_data*, %struct.k10temp_data** %8, align 8
  %23 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24, i32* %10)
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 127
  %29 = mul nsw i32 %28, 500
  %30 = add nsw i32 %29, 52000
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 24
  %36 = and i32 %35, 15
  %37 = mul nsw i32 %36, 500
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %33, %3
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  ret i32 %43
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.k10temp_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
