; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_get_swcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_get_swcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.ep93xx_rtc* }
%struct.ep93xx_rtc = type { i64 }

@EP93XX_RTC_SWCOMP = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_INT_MASK = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_INT_SHIFT = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_DEL_MASK = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_DEL_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i16*, i16*)* @ep93xx_rtc_get_swcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_rtc_get_swcomp(%struct.device* %0, i16* %1, i16* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca %struct.ep93xx_rtc*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %10, align 8
  store %struct.ep93xx_rtc* %11, %struct.ep93xx_rtc** %7, align 8
  %12 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %7, align 8
  %13 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EP93XX_RTC_SWCOMP, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @__raw_readl(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i16*, i16** %5, align 8
  %19 = icmp ne i16* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @EP93XX_RTC_SWCOMP_INT_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @EP93XX_RTC_SWCOMP_INT_SHIFT, align 8
  %25 = lshr i64 %23, %24
  %26 = trunc i64 %25 to i16
  %27 = load i16*, i16** %5, align 8
  store i16 %26, i16* %27, align 2
  br label %28

28:                                               ; preds = %20, %3
  %29 = load i16*, i16** %6, align 8
  %30 = icmp ne i16* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @EP93XX_RTC_SWCOMP_DEL_MASK, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* @EP93XX_RTC_SWCOMP_DEL_SHIFT, align 8
  %36 = lshr i64 %34, %35
  %37 = trunc i64 %36 to i16
  %38 = load i16*, i16** %6, align 8
  store i16 %37, i16* %38, align 2
  br label %39

39:                                               ; preds = %31, %28
  ret i32 0
}

declare dso_local i64 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
