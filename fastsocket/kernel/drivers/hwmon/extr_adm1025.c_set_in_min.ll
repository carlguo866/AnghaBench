; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_set_in_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_set_in_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1025_data = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@in_scale = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_in_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_in_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adm1025_data*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.adm1025_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.adm1025_data* %20, %struct.adm1025_data** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @simple_strtol(i8* %21, i32* null, i32 10)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.adm1025_data*, %struct.adm1025_data** %11, align 8
  %24 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i64, i64* %12, align 8
  %27 = load i32*, i32** @in_scale, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IN_TO_REG(i64 %26, i32 %31)
  %33 = load %struct.adm1025_data*, %struct.adm1025_data** %11, align 8
  %34 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ADM1025_REG_IN_MIN(i32 %40)
  %42 = load %struct.adm1025_data*, %struct.adm1025_data** %11, align 8
  %43 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %39, i32 %41, i32 %48)
  %50 = load %struct.adm1025_data*, %struct.adm1025_data** %11, align 8
  %51 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %8, align 8
  ret i64 %53
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1025_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IN_TO_REG(i64, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM1025_REG_IN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
