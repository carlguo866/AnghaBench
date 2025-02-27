; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_counter_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_counter_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftm_rtc = type { i32 }

@FTM_SC = common dso_local global i32 0, align 4
@FTM_SC_PS_MASK = common dso_local global i32 0, align 4
@FTM_SC_CLK_MASK = common dso_local global i32 0, align 4
@FTM_SC_CLKS_FIXED_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftm_rtc*)* @ftm_counter_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftm_counter_enable(%struct.ftm_rtc* %0) #0 {
  %2 = alloca %struct.ftm_rtc*, align 8
  %3 = alloca i32, align 4
  store %struct.ftm_rtc* %0, %struct.ftm_rtc** %2, align 8
  %4 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %5 = load i32, i32* @FTM_SC, align 4
  %6 = call i32 @rtc_readl(%struct.ftm_rtc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @FTM_SC_PS_MASK, align 4
  %8 = load i32, i32* @FTM_SC_CLK_MASK, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @FTM_SC_PS_MASK, align 4
  %14 = load i32, i32* @FTM_SC_CLKS_FIXED_FREQ, align 4
  %15 = call i32 @FTM_SC_CLK(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %20 = load i32, i32* @FTM_SC, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @rtc_writel(%struct.ftm_rtc* %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @rtc_readl(%struct.ftm_rtc*, i32) #1

declare dso_local i32 @FTM_SC_CLK(i32) #1

declare dso_local i32 @rtc_writel(%struct.ftm_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
