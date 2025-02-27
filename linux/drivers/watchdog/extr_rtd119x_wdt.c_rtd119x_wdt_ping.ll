; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rtd119x_wdt.c_rtd119x_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rtd119x_wdt.c_rtd119x_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rtd119x_watchdog_device = type { i64 }

@RTD119X_TCWTR_WDCLR = common dso_local global i32 0, align 4
@RTD119X_TCWTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rtd119x_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd119x_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.rtd119x_watchdog_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.rtd119x_watchdog_device* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.rtd119x_watchdog_device* %5, %struct.rtd119x_watchdog_device** %3, align 8
  %6 = load i32, i32* @RTD119X_TCWTR_WDCLR, align 4
  %7 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %3, align 8
  %8 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTD119X_TCWTR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 %6, i64 %11)
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %14 = call i32 @rtd119x_wdt_start(%struct.watchdog_device* %13)
  ret i32 %14
}

declare dso_local %struct.rtd119x_watchdog_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @rtd119x_wdt_start(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
