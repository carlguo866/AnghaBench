; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_in_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_in_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i64, i64, i32 }

@f81866a = common dso_local global i64 0, align 8
@F81866_REG_IN1_HIGH = common dso_local global i32 0, align 4
@F71882FG_REG_IN1_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_in_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.f71882fg_data* %14, %struct.f71882fg_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtol(i8* %15, i32 10, i64* %12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load i64, i64* %12, align 8
  %23 = sdiv i64 %22, 8
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @clamp_val(i64 %24, i32 0, i32 255)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %27 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %30 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @f81866a, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %36 = load i32, i32* @F81866_REG_IN1_HIGH, align 4
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @f71882fg_write8(%struct.f71882fg_data* %35, i32 %36, i64 %37)
  br label %44

39:                                               ; preds = %21
  %40 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %41 = load i32, i32* @F71882FG_REG_IN1_HIGH, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @f71882fg_write8(%struct.f71882fg_data* %40, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %47 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %44, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
