; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ltc2952_poweroff = type { i32, i32, i32 }

@pm_power_off = common dso_local global i32* null, align 8
@panic_notifier_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltc2952_poweroff_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2952_poweroff_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ltc2952_poweroff*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ltc2952_poweroff* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ltc2952_poweroff* %5, %struct.ltc2952_poweroff** %3, align 8
  store i32* null, i32** @pm_power_off, align 8
  %6 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %3, align 8
  %7 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %6, i32 0, i32 2
  %8 = call i32 @hrtimer_cancel(i32* %7)
  %9 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %3, align 8
  %10 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %9, i32 0, i32 1
  %11 = call i32 @hrtimer_cancel(i32* %10)
  %12 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %3, align 8
  %13 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %12, i32 0, i32 0
  %14 = call i32 @atomic_notifier_chain_unregister(i32* @panic_notifier_list, i32* %13)
  ret i32 0
}

declare dso_local %struct.ltc2952_poweroff* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @atomic_notifier_chain_unregister(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
