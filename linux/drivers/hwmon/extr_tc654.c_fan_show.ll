; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_fan_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_fan_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tc654_data = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@TC654_REG_CONFIG_RES = common dso_local global i32 0, align 4
@TC654_HIGH_RPM_RESOLUTION = common dso_local global i32 0, align 4
@TC654_LOW_RPM_RESOLUTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tc654_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.tc654_data* @tc654_update_client(%struct.device* %15)
  store %struct.tc654_data* %16, %struct.tc654_data** %9, align 8
  %17 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %18 = call i64 @IS_ERR(%struct.tc654_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.tc654_data* %21)
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %25 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TC654_REG_CONFIG_RES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %32 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TC654_HIGH_RPM_RESOLUTION, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  br label %50

40:                                               ; preds = %23
  %41 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %42 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TC654_LOW_RPM_RESOLUTION, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %40, %30
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.tc654_data* @tc654_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.tc654_data*) #1

declare dso_local i32 @PTR_ERR(%struct.tc654_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
