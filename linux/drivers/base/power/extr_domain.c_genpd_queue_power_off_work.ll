; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_queue_power_off_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_queue_power_off_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }

@pm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.generic_pm_domain*)* @genpd_queue_power_off_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genpd_queue_power_off_work(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca %struct.generic_pm_domain*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %2, align 8
  %3 = load i32, i32* @pm_wq, align 4
  %4 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %4, i32 0, i32 0
  %6 = call i32 @queue_work(i32 %3, i32* %5)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
