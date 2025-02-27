; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_lm3533_led_get_hw_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_lm3533_led_get_hw_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LM3533_LED_DELAY2_TMAX = common dso_local global i32 0, align 4
@LM3533_LED_DELAY3_TMIN = common dso_local global i32 0, align 4
@LM3533_LED_DELAY3_TMAX = common dso_local global i32 0, align 4
@LM3533_LED_DELAY3_TSTEP = common dso_local global i32 0, align 4
@LM3533_LED_DELAY3_VMIN = common dso_local global i32 0, align 4
@LM3533_LED_DELAY3_VMAX = common dso_local global i32 0, align 4
@LM3533_LED_DELAY1_TMAX = common dso_local global i32 0, align 4
@LM3533_LED_DELAY2_TMIN = common dso_local global i32 0, align 4
@LM3533_LED_DELAY2_TSTEP = common dso_local global i32 0, align 4
@LM3533_LED_DELAY2_VMIN = common dso_local global i32 0, align 4
@LM3533_LED_DELAY2_VMAX = common dso_local global i32 0, align 4
@LM3533_LED_DELAY1_TMIN = common dso_local global i32 0, align 4
@LM3533_LED_DELAY1_TSTEP = common dso_local global i32 0, align 4
@LM3533_LED_DELAY1_VMIN = common dso_local global i32 0, align 4
@LM3533_LED_DELAY1_VMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lm3533_led_get_hw_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_led_get_hw_delay(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* %5, align 4
  %7 = mul i32 %6, 1000
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @LM3533_LED_DELAY2_TMAX, align 4
  %10 = load i32, i32* @LM3533_LED_DELAY3_TMIN, align 4
  %11 = add nsw i32 %9, %10
  %12 = sdiv i32 %11, 2
  %13 = icmp uge i32 %8, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LM3533_LED_DELAY3_TMIN, align 4
  %17 = load i32, i32* @LM3533_LED_DELAY3_TMAX, align 4
  %18 = call i32 @clamp(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @LM3533_LED_DELAY3_TMIN, align 4
  %20 = load i32, i32* @LM3533_LED_DELAY3_TSTEP, align 4
  %21 = load i32, i32* @LM3533_LED_DELAY3_VMIN, align 4
  %22 = load i32, i32* @LM3533_LED_DELAY3_VMAX, align 4
  %23 = call i32 @time_to_val(i32* %3, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @LM3533_LED_DELAY1_TMAX, align 4
  %27 = load i32, i32* @LM3533_LED_DELAY2_TMIN, align 4
  %28 = add nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = icmp uge i32 %25, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @LM3533_LED_DELAY2_TMIN, align 4
  %34 = load i32, i32* @LM3533_LED_DELAY2_TMAX, align 4
  %35 = call i32 @clamp(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @LM3533_LED_DELAY2_TMIN, align 4
  %37 = load i32, i32* @LM3533_LED_DELAY2_TSTEP, align 4
  %38 = load i32, i32* @LM3533_LED_DELAY2_VMIN, align 4
  %39 = load i32, i32* @LM3533_LED_DELAY2_VMAX, align 4
  %40 = call i32 @time_to_val(i32* %3, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %51

41:                                               ; preds = %24
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @LM3533_LED_DELAY1_TMIN, align 4
  %44 = load i32, i32* @LM3533_LED_DELAY1_TMAX, align 4
  %45 = call i32 @clamp(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @LM3533_LED_DELAY1_TMIN, align 4
  %47 = load i32, i32* @LM3533_LED_DELAY1_TSTEP, align 4
  %48 = load i32, i32* @LM3533_LED_DELAY1_VMIN, align 4
  %49 = load i32, i32* @LM3533_LED_DELAY1_VMAX, align 4
  %50 = call i32 @time_to_val(i32* %3, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %41, %31
  br label %52

52:                                               ; preds = %51, %14
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 500
  %55 = udiv i32 %54, 1000
  %56 = load i32*, i32** %2, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @time_to_val(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
