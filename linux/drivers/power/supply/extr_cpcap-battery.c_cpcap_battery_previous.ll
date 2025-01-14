; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_previous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_previous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_battery_state_data = type { i32 }
%struct.cpcap_battery_ddata = type { i32 }

@CPCAP_BATTERY_STATE_PREVIOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpcap_battery_state_data* (%struct.cpcap_battery_ddata*)* @cpcap_battery_previous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpcap_battery_state_data* @cpcap_battery_previous(%struct.cpcap_battery_ddata* %0) #0 {
  %2 = alloca %struct.cpcap_battery_ddata*, align 8
  store %struct.cpcap_battery_ddata* %0, %struct.cpcap_battery_ddata** %2, align 8
  %3 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %2, align 8
  %4 = load i32, i32* @CPCAP_BATTERY_STATE_PREVIOUS, align 4
  %5 = call %struct.cpcap_battery_state_data* @cpcap_battery_get_state(%struct.cpcap_battery_ddata* %3, i32 %4)
  ret %struct.cpcap_battery_state_data* %5
}

declare dso_local %struct.cpcap_battery_state_data* @cpcap_battery_get_state(%struct.cpcap_battery_ddata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
