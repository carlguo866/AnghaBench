; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_pwm_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_pwm_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm93_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_PWM_CTL2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.lm93_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.lm93_data* %21, %struct.lm93_data** %11, align 8
  %22 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %23 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %22, i32 0, i32 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %68

31:                                               ; preds = %4
  %32 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %33 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @LM93_PWM_CTL2, align 4
  %38 = call i32 @LM93_REG_PWM_CTL(i32 %36, i32 %37)
  %39 = call i32 @lm93_read_byte(%struct.i2c_client* %35, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i64, i64* %14, align 8
  switch i64 %40, label %50 [
    i64 0, label %41
    i64 1, label %44
    i64 2, label %47
  ]

41:                                               ; preds = %31
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, 241
  store i32 %43, i32* %13, align 4
  br label %56

44:                                               ; preds = %31
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %56

47:                                               ; preds = %31
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, -2
  store i32 %49, i32* %13, align 4
  br label %56

50:                                               ; preds = %31
  %51 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %52 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %68

56:                                               ; preds = %47, %44, %41
  %57 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @LM93_PWM_CTL2, align 4
  %60 = call i32 @LM93_REG_PWM_CTL(i32 %58, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @lm93_write_byte(%struct.i2c_client* %57, i32 %60, i32 %61)
  %63 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %64 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %56, %50, %29
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm93_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_REG_PWM_CTL(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
