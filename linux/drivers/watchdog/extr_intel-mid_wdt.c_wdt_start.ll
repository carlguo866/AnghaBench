; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel-mid_wdt.c_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel-mid_wdt.c_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.device = type { i32 }
%struct.ipc_wd_start = type { i32, i32 }

@MID_WDT_PRETIMEOUT = common dso_local global i32 0, align 4
@SCU_WATCHDOG_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error starting watchdog: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipc_wd_start, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %9 = call %struct.device* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = getelementptr inbounds %struct.ipc_wd_start, %struct.ipc_wd_start* %7, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MID_WDT_PRETIMEOUT, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.ipc_wd_start, %struct.ipc_wd_start* %7, i32 0, i32 1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %17, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 8, i32 4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @SCU_WATCHDOG_START, align 4
  %21 = bitcast %struct.ipc_wd_start* %7 to i32*
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @wdt_command(i32 %20, i32* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_crit(%struct.device* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @wdt_command(i32, i32*, i32) #1

declare dso_local i32 @dev_crit(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
