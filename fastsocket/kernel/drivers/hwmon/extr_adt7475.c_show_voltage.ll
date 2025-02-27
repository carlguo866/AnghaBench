; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_show_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_show_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32, i16** }
%struct.sensor_device_attribute_2 = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_voltage(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adt7475_data*, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.adt7475_data* @adt7475_update_device(%struct.device* %11)
  store %struct.adt7475_data* %12, %struct.adt7475_data** %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %9, align 8
  %15 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %31 [
    i32 128, label %18
  ]

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %21 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = ashr i32 %22, %27
  %29 = and i32 %28, 1
  %30 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %3
  %32 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %33 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %32, i32 0, i32 1
  %34 = load i16**, i16*** %33, align 8
  %35 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16*, i16** %34, i64 %38
  %40 = load i16*, i16** %39, align 8
  %41 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i16, i16* %40, i64 %43
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %10, align 2
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %48 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %31
  %52 = load i16, i16* %10, align 2
  %53 = call i32 @reg2vccp(i16 zeroext %52)
  br label %57

54:                                               ; preds = %31
  %55 = load i16, i16* %10, align 2
  %56 = call i32 @reg2vcc(i16 zeroext %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  %59 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.adt7475_data* @adt7475_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @reg2vccp(i16 zeroext) #1

declare dso_local i32 @reg2vcc(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
