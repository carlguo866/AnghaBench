; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_m41txx_rtc_read_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_m41txx_rtc_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds1307 = type { i32 }

@M41TXX_REG_CONTROL = common dso_local global i32 0, align 4
@M41TXX_M_CALIBRATION = common dso_local global i32 0, align 4
@M41TXX_BIT_CALIB_SIGN = common dso_local global i32 0, align 4
@M41TXX_POS_OFFSET_STEP_PPB = common dso_local global i64 0, align 8
@M41TXX_NEG_OFFSET_STEP_PPB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*)* @m41txx_rtc_read_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41txx_rtc_read_offset(%struct.device* %0, i64* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.ds1307*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ds1307* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1307* %9, %struct.ds1307** %5, align 8
  %10 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %11 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @M41TXX_REG_CONTROL, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @M41TXX_M_CALIBRATION, align 4
  %17 = and i32 %15, %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @M41TXX_BIT_CALIB_SIGN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @M41TXX_POS_OFFSET_STEP_PPB, align 8
  %26 = mul nsw i64 %24, %25
  %27 = load i64*, i64** %4, align 8
  store i64 %26, i64* %27, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @M41TXX_NEG_OFFSET_STEP_PPB, align 8
  %31 = mul nsw i64 %29, %30
  %32 = sub nsw i64 0, %31
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %23
  ret i32 0
}

declare dso_local %struct.ds1307* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
