; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_max77620_wdt.c_max77620_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_max77620_wdt.c_max77620_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.max77620_wdt = type { i32 }

@MAX77620_REG_CNFGGLBL2 = common dso_local global i32 0, align 4
@MAX77620_WDTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @max77620_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.max77620_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.max77620_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.max77620_wdt* %5, %struct.max77620_wdt** %3, align 8
  %6 = load %struct.max77620_wdt*, %struct.max77620_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX77620_REG_CNFGGLBL2, align 4
  %10 = load i32, i32* @MAX77620_WDTEN, align 4
  %11 = load i32, i32* @MAX77620_WDTEN, align 4
  %12 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 %11)
  ret i32 %12
}

declare dso_local %struct.max77620_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
