; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_do_set_fan_pulses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_do_set_fan_pulses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.g762_data = type { i32, i32, i32, i32 }

@G762_REG_FAN_CMD1_PULSE_PER_REV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@G762_REG_FAN_CMD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @do_set_fan_pulses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_fan_pulses(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g762_data*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.g762_data* @g762_update_client(%struct.device* %8)
  store %struct.g762_data* %9, %struct.g762_data** %6, align 8
  %10 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %11 = call i64 @IS_ERR(%struct.g762_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.g762_data* %14)
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %18 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %5, align 8
  switch i64 %20, label %34 [
    i64 2, label %21
    i64 4, label %28
  ]

21:                                               ; preds = %16
  %22 = load i32, i32* @G762_REG_FAN_CMD1_PULSE_PER_REV, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %25 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %37

28:                                               ; preds = %16
  %29 = load i32, i32* @G762_REG_FAN_CMD1_PULSE_PER_REV, align 4
  %30 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %31 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %37

34:                                               ; preds = %16
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %48

37:                                               ; preds = %28, %21
  %38 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %39 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @G762_REG_FAN_CMD1, align 4
  %42 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %43 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(i32 %40, i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %47 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %37, %34
  %49 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %50 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.g762_data* @g762_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.g762_data*) #1

declare dso_local i32 @PTR_ERR(%struct.g762_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
