; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_get_attr_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_get_attr_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.arm_spe_pmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @arm_spe_pmu_get_attr_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_pmu_get_attr_cpumask(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.arm_spe_pmu*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.arm_spe_pmu* @dev_get_drvdata(%struct.device* %8)
  store %struct.arm_spe_pmu* %9, %struct.arm_spe_pmu** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %7, align 8
  %12 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %11, i32 0, i32 0
  %13 = call i32 @cpumap_print_to_pagebuf(i32 1, i8* %10, i32* %12)
  ret i32 %13
}

declare dso_local %struct.arm_spe_pmu* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cpumap_print_to_pagebuf(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
