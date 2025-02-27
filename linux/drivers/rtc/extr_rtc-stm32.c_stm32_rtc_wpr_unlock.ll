; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_wpr_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_wpr_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i64 }

@RTC_WPR_1ST_KEY = common dso_local global i32 0, align 4
@RTC_WPR_2ND_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_rtc*)* @stm32_rtc_wpr_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_rtc_wpr_unlock(%struct.stm32_rtc* %0) #0 {
  %2 = alloca %struct.stm32_rtc*, align 8
  %3 = alloca %struct.stm32_rtc_registers*, align 8
  store %struct.stm32_rtc* %0, %struct.stm32_rtc** %2, align 8
  %4 = load %struct.stm32_rtc*, %struct.stm32_rtc** %2, align 8
  %5 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.stm32_rtc_registers* %7, %struct.stm32_rtc_registers** %3, align 8
  %8 = load i32, i32* @RTC_WPR_1ST_KEY, align 4
  %9 = load %struct.stm32_rtc*, %struct.stm32_rtc** %2, align 8
  %10 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = call i32 @writel_relaxed(i32 %8, i64 %15)
  %17 = load i32, i32* @RTC_WPR_2ND_KEY, align 4
  %18 = load %struct.stm32_rtc*, %struct.stm32_rtc** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i32 @writel_relaxed(i32 %17, i64 %24)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
