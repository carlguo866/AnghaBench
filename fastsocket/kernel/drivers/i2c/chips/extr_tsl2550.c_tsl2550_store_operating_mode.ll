; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/chips/extr_tsl2550.c_tsl2550_store_operating_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/chips/extr_tsl2550.c_tsl2550_store_operating_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tsl2550_data = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @tsl2550_store_operating_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2550_store_operating_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.tsl2550_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.tsl2550_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.tsl2550_data* %17, %struct.tsl2550_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @simple_strtoul(i8* %18, i32* null, i32 10)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ult i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ugt i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %22
  %29 = load %struct.tsl2550_data*, %struct.tsl2550_data** %11, align 8
  %30 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %53

36:                                               ; preds = %28
  %37 = load %struct.tsl2550_data*, %struct.tsl2550_data** %11, align 8
  %38 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @tsl2550_set_operating_mode(%struct.i2c_client* %40, i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.tsl2550_data*, %struct.tsl2550_data** %11, align 8
  %44 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %36
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %48, %33, %25
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.tsl2550_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tsl2550_set_operating_mode(%struct.i2c_client*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
