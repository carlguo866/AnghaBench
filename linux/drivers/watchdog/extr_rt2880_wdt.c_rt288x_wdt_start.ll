; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rt2880_wdt.c_rt288x_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rt2880_wdt.c_rt288x_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@TIMER_REG_TMR1CTL = common dso_local global i32 0, align 4
@TMR1CTL_MODE_MASK = common dso_local global i32 0, align 4
@TMR1CTL_MODE_SHIFT = common dso_local global i32 0, align 4
@TMR1CTL_PRESCALE_MASK = common dso_local global i32 0, align 4
@TMR1CTL_MODE_WDT = common dso_local global i32 0, align 4
@TMR1CTL_PRESCALE_65536 = common dso_local global i32 0, align 4
@TMR1CTL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rt288x_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt288x_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load i32, i32* @TIMER_REG_TMR1CTL, align 4
  %5 = call i32 @rt_wdt_r32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @TMR1CTL_MODE_MASK, align 4
  %7 = load i32, i32* @TMR1CTL_MODE_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @TMR1CTL_PRESCALE_MASK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @TMR1CTL_MODE_WDT, align 4
  %15 = load i32, i32* @TMR1CTL_MODE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @TMR1CTL_PRESCALE_65536, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @TIMER_REG_TMR1CTL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @rt_wdt_w32(i32 %21, i32 %22)
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %25 = call i32 @rt288x_wdt_ping(%struct.watchdog_device* %24)
  %26 = load i32, i32* @TIMER_REG_TMR1CTL, align 4
  %27 = call i32 @rt_wdt_r32(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @TMR1CTL_ENABLE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @TIMER_REG_TMR1CTL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @rt_wdt_w32(i32 %31, i32 %32)
  ret i32 0
}

declare dso_local i32 @rt_wdt_r32(i32) #1

declare dso_local i32 @rt_wdt_w32(i32, i32) #1

declare dso_local i32 @rt288x_wdt_ping(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
