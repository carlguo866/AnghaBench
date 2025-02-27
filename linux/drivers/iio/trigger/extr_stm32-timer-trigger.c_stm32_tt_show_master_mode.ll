; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_show_master_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_show_master_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stm32_timer_trigger = type { i32 }
%struct.iio_trigger = type { i32 }

@TIM_CR2 = common dso_local global i32 0, align 4
@TIM_CR2_MMS2 = common dso_local global i64 0, align 8
@TIM_CR2_MMS2_SHIFT = common dso_local global i64 0, align 8
@TIM_CR2_MMS = common dso_local global i64 0, align 8
@TIM_CR2_MMS_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@master_mode_table = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @stm32_tt_show_master_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_tt_show_master_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stm32_timer_trigger*, align 8
  %8 = alloca %struct.iio_trigger*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.stm32_timer_trigger* @dev_get_drvdata(%struct.device* %10)
  store %struct.stm32_timer_trigger* %11, %struct.stm32_timer_trigger** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iio_trigger* @to_iio_trigger(%struct.device* %12)
  store %struct.iio_trigger* %13, %struct.iio_trigger** %8, align 8
  %14 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %7, align 8
  %15 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TIM_CR2, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i64* %9)
  %19 = load %struct.iio_trigger*, %struct.iio_trigger** %8, align 8
  %20 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @stm32_timer_is_trgo2_name(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @TIM_CR2_MMS2, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @TIM_CR2_MMS2_SHIFT, align 8
  %29 = lshr i64 %27, %28
  store i64 %29, i64* %9, align 8
  br label %36

30:                                               ; preds = %3
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @TIM_CR2_MMS, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @TIM_CR2_MMS_SHIFT, align 8
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i8**, i8*** @master_mode_table, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %42)
  ret i32 %43
}

declare dso_local %struct.stm32_timer_trigger* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.iio_trigger* @to_iio_trigger(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i64 @stm32_timer_is_trgo2_name(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
