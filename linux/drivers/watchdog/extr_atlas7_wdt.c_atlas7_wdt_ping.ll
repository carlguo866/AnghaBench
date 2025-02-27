; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_atlas7_wdt.c_atlas7_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_atlas7_wdt.c_atlas7_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.atlas7_wdog = type { i32, i64 }

@ATLAS7_WDT_CNT = common dso_local global i64 0, align 8
@ATLAS7_WDT_CNT_MATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @atlas7_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.atlas7_wdog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = call %struct.atlas7_wdog* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.atlas7_wdog* %8, %struct.atlas7_wdog** %3, align 8
  %9 = load %struct.atlas7_wdog*, %struct.atlas7_wdog** %3, align 8
  %10 = getelementptr inbounds %struct.atlas7_wdog, %struct.atlas7_wdog* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ATLAS7_WDT_CNT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %16 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atlas7_wdog*, %struct.atlas7_wdog** %3, align 8
  %19 = getelementptr inbounds %struct.atlas7_wdog, %struct.atlas7_wdog* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.atlas7_wdog*, %struct.atlas7_wdog** %3, align 8
  %27 = getelementptr inbounds %struct.atlas7_wdog, %struct.atlas7_wdog* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ATLAS7_WDT_CNT_MATCH, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  ret i32 0
}

declare dso_local %struct.atlas7_wdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
