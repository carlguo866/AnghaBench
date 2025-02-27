; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_write_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_write_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@PB_FAN_1_RPM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @max31785_write_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31785_write_word_data(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %23 [
    i32 129, label %11
    i32 128, label %18
  ]

11:                                               ; preds = %4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PB_FAN_1_RPM, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @max31785_scale_pwm(i32 %15)
  %17 = call i32 @pmbus_update_fan(%struct.i2c_client* %12, i32 %13, i32 0, i32 0, i32 %14, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @max31785_pwm_enable(%struct.i2c_client* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @ENODATA, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %18, %11
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @pmbus_update_fan(%struct.i2c_client*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max31785_scale_pwm(i32) #1

declare dso_local i32 @max31785_pwm_enable(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
