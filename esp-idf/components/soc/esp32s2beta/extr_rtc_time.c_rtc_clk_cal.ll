; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_time.c_rtc_clk_cal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_time.c_rtc_clk_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CLK_CAL_FRACT = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_clk_cal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = call i64 (...) @rtc_clk_xtal_freq_get()
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @rtc_clk_cal_internal(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RTC_CLK_CAL_FRACT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 2
  %23 = add nsw i32 %20, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @UINT32_MAX, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i64 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @rtc_clk_cal_internal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
