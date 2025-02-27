; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_set_temp_crit_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_set_temp_crit_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1026_data = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CFG1_THERM_HOT = common dso_local global i64 0, align 8
@ADM1026_REG_CONFIG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp_crit_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_temp_crit_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1026_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.adm1026_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.adm1026_data* %15, %struct.adm1026_data** %10, align 8
  %16 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %17 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoul(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = icmp ugt i64 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %57

31:                                               ; preds = %25
  %32 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %33 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %36 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CFG1_THERM_HOT, align 8
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  %41 = load i64, i64* %12, align 8
  %42 = shl i64 %41, 4
  %43 = or i64 %40, %42
  %44 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %45 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %47 = load i32, i32* @ADM1026_REG_CONFIG1, align 4
  %48 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %49 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @adm1026_write_value(%struct.i2c_client* %46, i32 %47, i64 %50)
  %52 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %53 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %31, %28, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.adm1026_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
