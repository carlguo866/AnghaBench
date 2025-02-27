; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cadence_wdt.c_cdns_wdt_reload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cadence_wdt.c_cdns_wdt_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.cdns_wdt = type { i32 }

@CDNS_WDT_RESTART_OFFSET = common dso_local global i32 0, align 4
@CDNS_WDT_RESTART_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @cdns_wdt_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_wdt_reload(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.cdns_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.cdns_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.cdns_wdt* %5, %struct.cdns_wdt** %3, align 8
  %6 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %10 = load i32, i32* @CDNS_WDT_RESTART_OFFSET, align 4
  %11 = load i32, i32* @CDNS_WDT_RESTART_KEY, align 4
  %12 = call i32 @cdns_wdt_writereg(%struct.cdns_wdt* %9, i32 %10, i32 %11)
  %13 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %14 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  ret i32 0
}

declare dso_local %struct.cdns_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cdns_wdt_writereg(%struct.cdns_wdt*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
