; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_ext_power_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_ext_power_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%struct.z2_charger = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply*)* @z2_batt_ext_power_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z2_batt_ext_power_changed(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca %struct.z2_charger*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %4 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %5 = call %struct.z2_charger* @power_supply_get_drvdata(%struct.power_supply* %4)
  store %struct.z2_charger* %5, %struct.z2_charger** %3, align 8
  %6 = load %struct.z2_charger*, %struct.z2_charger** %3, align 8
  %7 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %6, i32 0, i32 0
  %8 = call i32 @schedule_work(i32* %7)
  ret void
}

declare dso_local %struct.z2_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
