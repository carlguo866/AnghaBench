; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_power_sensor_multiplier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_power_sensor_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmpex_bmc_data = type { i32 }

@PEX_SENSOR_TYPE_LEN = common dso_local global i32 0, align 4
@watt_sensor_sig = common dso_local global i32 0, align 4
@PEX_MULT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmpex_bmc_data*, i8*, i32)* @power_sensor_multiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_sensor_multiplier(%struct.ibmpex_bmc_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmpex_bmc_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibmpex_bmc_data* %0, %struct.ibmpex_bmc_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %10 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1000000, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* @PEX_SENSOR_TYPE_LEN, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %14
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i32, i32* @watt_sensor_sig, align 4
  %27 = load i32, i32* @PEX_MULT_LEN, align 4
  %28 = call i32 @memcmp(i8* %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 1000000, i32* %4, align 4
  br label %36

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %16

35:                                               ; preds = %16
  store i32 100000, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
