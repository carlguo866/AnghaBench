; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.da9030_charger = type { i32, i32, i32, i32 }

@DA9030_EVENT_CHDET = common dso_local global i32 0, align 4
@DA9030_EVENT_VBATMON = common dso_local global i32 0, align 4
@DA9030_EVENT_CHIOVER = common dso_local global i32 0, align 4
@DA9030_EVENT_TBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9030_battery_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_battery_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.da9030_charger*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.da9030_charger* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.da9030_charger* %5, %struct.da9030_charger** %3, align 8
  %6 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %7 = call i32 @da9030_bat_remove_debugfs(%struct.da9030_charger* %6)
  %8 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %9 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %12 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %11, i32 0, i32 2
  %13 = load i32, i32* @DA9030_EVENT_CHDET, align 4
  %14 = load i32, i32* @DA9030_EVENT_VBATMON, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DA9030_EVENT_CHIOVER, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DA9030_EVENT_TBAT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @da903x_unregister_notifier(i32 %10, i32* %12, i32 %19)
  %21 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %22 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %21, i32 0, i32 1
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %25 = call i32 @da9030_set_charge(%struct.da9030_charger* %24, i32 0)
  %26 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %27 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %26, i32 0, i32 0
  %28 = call i32 @power_supply_unregister(i32* %27)
  %29 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %30 = call i32 @kfree(%struct.da9030_charger* %29)
  ret i32 0
}

declare dso_local %struct.da9030_charger* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @da9030_bat_remove_debugfs(%struct.da9030_charger*) #1

declare dso_local i32 @da903x_unregister_notifier(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @da9030_set_charge(%struct.da9030_charger*, i32) #1

declare dso_local i32 @power_supply_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.da9030_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
