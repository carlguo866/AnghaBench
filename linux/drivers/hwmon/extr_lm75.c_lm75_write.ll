; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @lm75_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %23 [
    i32 129, label %13
    i32 128, label %18
  ]

13:                                               ; preds = %5
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @lm75_write_chip(%struct.device* %14, i32 %15, i64 %16)
  store i32 %17, i32* %6, align 4
  br label %26

18:                                               ; preds = %5
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @lm75_write_temp(%struct.device* %19, i32 %20, i64 %21)
  store i32 %22, i32* %6, align 4
  br label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %18, %13
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @lm75_write_chip(%struct.device*, i32, i64) #1

declare dso_local i32 @lm75_write_temp(%struct.device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
