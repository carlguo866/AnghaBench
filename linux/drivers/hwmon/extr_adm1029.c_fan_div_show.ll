; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_fan_div_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_fan_div_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.adm1029_data = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan_div_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.adm1029_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %11 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %10)
  store %struct.sensor_device_attribute* %11, %struct.sensor_device_attribute** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.adm1029_data* @adm1029_update_device(%struct.device* %12)
  store %struct.adm1029_data* %13, %struct.adm1029_data** %9, align 8
  %14 = load %struct.adm1029_data*, %struct.adm1029_data** %9, align 8
  %15 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.adm1029_data*, %struct.adm1029_data** %9, align 8
  %30 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DIV_FROM_REG(i32 %36)
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %27, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adm1029_data* @adm1029_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
