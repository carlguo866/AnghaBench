; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_isl29020.c_als_lux_input_data_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_isl29020.c_als_lux_input_data_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }

@mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @als_lux_input_data_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_lux_input_data_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @pm_runtime_get_sync(%struct.device* %15)
  %17 = call i32 @msleep(i32 100)
  %18 = call i32 @mutex_lock(i32* @mutex)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %20 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %19, i32 2)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @pm_runtime_put_sync(%struct.device* %24)
  %26 = call i32 @mutex_unlock(i32* @mutex)
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %3
  %29 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = call i32 @mutex_unlock(i32* @mutex)
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @pm_runtime_put_sync(%struct.device* %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %64

38:                                               ; preds = %28
  %39 = load i32, i32* %12, align 4
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @pm_runtime_put_sync(%struct.device* %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %64

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 3
  %54 = mul nsw i32 2, %53
  %55 = shl i32 1, %54
  %56 = mul nsw i32 %55, 1000
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sdiv i32 %58, 65536
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %11, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %51, %49, %34, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
