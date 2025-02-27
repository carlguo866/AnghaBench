; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.men_z069_drv = type { i64 }

@MEN_Z069_WVR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @men_z069_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z069_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.men_z069_drv*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.men_z069_drv* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.men_z069_drv* %6, %struct.men_z069_drv** %3, align 8
  %7 = load %struct.men_z069_drv*, %struct.men_z069_drv** %3, align 8
  %8 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MEN_Z069_WVR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readw(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = xor i32 %13, 65535
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.men_z069_drv*, %struct.men_z069_drv** %3, align 8
  %17 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MEN_Z069_WVR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writew(i32 %15, i64 %20)
  ret i32 0
}

declare dso_local %struct.men_z069_drv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
