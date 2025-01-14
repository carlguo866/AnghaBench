; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_devfreq = type { i32, i32, i32, i32, i32 }

@tegra_devfreq_governor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_devfreq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_devfreq_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra_devfreq*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tegra_devfreq* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tegra_devfreq* %5, %struct.tegra_devfreq** %3, align 8
  %6 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @devfreq_remove_device(i32 %8)
  %10 = call i32 @devfreq_remove_governor(i32* @tegra_devfreq_governor)
  %11 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %14, i32 0, i32 2
  %16 = call i32 @clk_notifier_unregister(i32 %13, i32* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_pm_opp_remove_all_dynamic(i32* %18)
  %20 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reset_control_reset(i32 %22)
  %24 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  ret i32 0
}

declare dso_local %struct.tegra_devfreq* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devfreq_remove_device(i32) #1

declare dso_local i32 @devfreq_remove_governor(i32*) #1

declare dso_local i32 @clk_notifier_unregister(i32, i32*) #1

declare dso_local i32 @dev_pm_opp_remove_all_dynamic(i32*) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
