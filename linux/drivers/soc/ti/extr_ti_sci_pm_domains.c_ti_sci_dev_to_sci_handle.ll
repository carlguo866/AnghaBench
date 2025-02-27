; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_dev_to_sci_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_dev_to_sci_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i32 }
%struct.device = type { i32 }
%struct.generic_pm_domain = type { i32 }
%struct.ti_sci_pm_domain = type { %struct.ti_sci_handle* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ti_sci_handle* (%struct.device*)* @ti_sci_dev_to_sci_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ti_sci_handle* @ti_sci_dev_to_sci_handle(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.ti_sci_pm_domain*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.generic_pm_domain* @pd_to_genpd(i32 %7)
  store %struct.generic_pm_domain* %8, %struct.generic_pm_domain** %3, align 8
  %9 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %10 = call %struct.ti_sci_pm_domain* @genpd_to_ti_sci_pd(%struct.generic_pm_domain* %9)
  store %struct.ti_sci_pm_domain* %10, %struct.ti_sci_pm_domain** %4, align 8
  %11 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %4, align 8
  %12 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %11, i32 0, i32 0
  %13 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %12, align 8
  ret %struct.ti_sci_handle* %13
}

declare dso_local %struct.generic_pm_domain* @pd_to_genpd(i32) #1

declare dso_local %struct.ti_sci_pm_domain* @genpd_to_ti_sci_pd(%struct.generic_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
