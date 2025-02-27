; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@percent = common dso_local global i32 0, align 4
@PB_FAN_1_RPM = common dso_local global i32 0, align 4
@rpm = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @max31785_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31785_pwm_enable(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %36 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %24
    i32 3, label %35
  ]

11:                                               ; preds = %3
  store i32 32767, i32* %9, align 4
  br label %39

12:                                               ; preds = %3
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @percent, align 4
  %16 = call i32 @pmbus_get_fan_rate_cached(%struct.i2c_client* %13, i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %46

21:                                               ; preds = %12
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @max31785_scale_pwm(i32 %22)
  store i32 %23, i32* %9, align 4
  br label %39

24:                                               ; preds = %3
  %25 = load i32, i32* @PB_FAN_1_RPM, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @rpm, align 4
  %29 = call i32 @pmbus_get_fan_rate_cached(%struct.i2c_client* %26, i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %3
  store i32 65535, i32* %9, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %35, %34, %21, %11
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PB_FAN_1_RPM, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @pmbus_update_fan(%struct.i2c_client* %40, i32 %41, i32 0, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %36, %32, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @pmbus_get_fan_rate_cached(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @max31785_scale_pwm(i32) #1

declare dso_local i32 @pmbus_update_fan(%struct.i2c_client*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
