; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm85_data = type { i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lm85_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %10 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.lm85_data* @lm85_update_device(%struct.device* %13)
  store %struct.lm85_data* %14, %struct.lm85_data** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %17 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lm85_data*, %struct.lm85_data** %8, align 8
  %24 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TEMPEXT_FROM_REG(i32 %22, i32 %29)
  %31 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  ret i32 %31
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm85_data* @lm85_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @TEMPEXT_FROM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
