; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scpi-cpufreq.c_scpi_cpufreq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_scpi-cpufreq.c_scpi_cpufreq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, %struct.scpi_data* }
%struct.scpi_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @scpi_cpufreq_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_cpufreq_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.scpi_data*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 1
  %6 = load %struct.scpi_data*, %struct.scpi_data** %5, align 8
  store %struct.scpi_data* %6, %struct.scpi_data** %3, align 8
  %7 = load %struct.scpi_data*, %struct.scpi_data** %3, align 8
  %8 = getelementptr inbounds %struct.scpi_data, %struct.scpi_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_put(i32 %9)
  %11 = load %struct.scpi_data*, %struct.scpi_data** %3, align 8
  %12 = getelementptr inbounds %struct.scpi_data, %struct.scpi_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = call i32 @dev_pm_opp_free_cpufreq_table(i32 %13, i32* %15)
  %17 = load %struct.scpi_data*, %struct.scpi_data** %3, align 8
  %18 = getelementptr inbounds %struct.scpi_data, %struct.scpi_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_pm_opp_remove_all_dynamic(i32 %19)
  %21 = load %struct.scpi_data*, %struct.scpi_data** %3, align 8
  %22 = call i32 @kfree(%struct.scpi_data* %21)
  ret i32 0
}

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @dev_pm_opp_free_cpufreq_table(i32, i32*) #1

declare dso_local i32 @dev_pm_opp_remove_all_dynamic(i32) #1

declare dso_local i32 @kfree(%struct.scpi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
