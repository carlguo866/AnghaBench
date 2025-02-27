; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_tangox_wdt.c_tangox_wdt_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_tangox_wdt.c_tangox_wdt_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.tangox_wdt_device = type { i32, i64 }

@WD_COUNTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @tangox_wdt_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tangox_wdt_get_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.tangox_wdt_device*, align 8
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.tangox_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.tangox_wdt_device* %7, %struct.tangox_wdt_device** %4, align 8
  %8 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %9 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WD_COUNTER, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %21 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %19, %22
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.tangox_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
