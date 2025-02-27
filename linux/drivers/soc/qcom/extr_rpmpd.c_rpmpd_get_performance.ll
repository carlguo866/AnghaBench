; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_get_performance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_get_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.dev_pm_opp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, %struct.dev_pm_opp*)* @rpmpd_get_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmpd_get_performance(%struct.generic_pm_domain* %0, %struct.dev_pm_opp* %1) #0 {
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.dev_pm_opp*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %3, align 8
  store %struct.dev_pm_opp* %1, %struct.dev_pm_opp** %4, align 8
  %5 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %4, align 8
  %6 = call i32 @dev_pm_opp_get_level(%struct.dev_pm_opp* %5)
  ret i32 %6
}

declare dso_local i32 @dev_pm_opp_get_level(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
