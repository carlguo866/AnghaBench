; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_am3352_rtc_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_am3352_rtc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_rtc = type { i32 }

@OMAP_RTC_KICK0_REG = common dso_local global i32 0, align 4
@KICK0_VALUE = common dso_local global i32 0, align 4
@OMAP_RTC_KICK1_REG = common dso_local global i32 0, align 4
@KICK1_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_rtc*)* @am3352_rtc_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am3352_rtc_unlock(%struct.omap_rtc* %0) #0 {
  %2 = alloca %struct.omap_rtc*, align 8
  store %struct.omap_rtc* %0, %struct.omap_rtc** %2, align 8
  %3 = load %struct.omap_rtc*, %struct.omap_rtc** %2, align 8
  %4 = load i32, i32* @OMAP_RTC_KICK0_REG, align 4
  %5 = load i32, i32* @KICK0_VALUE, align 4
  %6 = call i32 @rtc_writel(%struct.omap_rtc* %3, i32 %4, i32 %5)
  %7 = load %struct.omap_rtc*, %struct.omap_rtc** %2, align 8
  %8 = load i32, i32* @OMAP_RTC_KICK1_REG, align 4
  %9 = load i32, i32* @KICK1_VALUE, align 4
  %10 = call i32 @rtc_writel(%struct.omap_rtc* %7, i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @rtc_writel(%struct.omap_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
