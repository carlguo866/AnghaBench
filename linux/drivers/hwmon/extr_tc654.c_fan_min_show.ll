; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_fan_min_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_fan_min_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tc654_data = type { i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan_min_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_min_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tc654_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %11 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.tc654_data* @tc654_update_client(%struct.device* %14)
  store %struct.tc654_data* %15, %struct.tc654_data** %9, align 8
  %16 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %17 = call i64 @IS_ERR(%struct.tc654_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %21 = call i32 @PTR_ERR(%struct.tc654_data* %20)
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.tc654_data*, %struct.tc654_data** %9, align 8
  %25 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TC654_FAN_FAULT_FROM_REG(i32 %30)
  %32 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.tc654_data* @tc654_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.tc654_data*) #1

declare dso_local i32 @PTR_ERR(%struct.tc654_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @TC654_FAN_FAULT_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
