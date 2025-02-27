; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.a21_wdt_drv = type { i32* }

@GPIO_WD_ENAB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @a21_wdt_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a21_wdt_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.a21_wdt_drv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.a21_wdt_drv* @dev_get_drvdata(i32* %5)
  store %struct.a21_wdt_drv* %6, %struct.a21_wdt_drv** %3, align 8
  %7 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %3, align 8
  %8 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @GPIO_WD_ENAB, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gpiod_set_value(i32 %12, i32 0)
  ret void
}

declare dso_local %struct.a21_wdt_drv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
