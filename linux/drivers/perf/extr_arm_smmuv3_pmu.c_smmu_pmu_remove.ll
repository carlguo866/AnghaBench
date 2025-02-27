; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_smmuv3_pmu.c_smmu_pmu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.smmu_pmu = type { i32, i32 }

@cpuhp_state_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smmu_pmu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smmu_pmu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.smmu_pmu*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.smmu_pmu* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.smmu_pmu* %5, %struct.smmu_pmu** %3, align 8
  %6 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %6, i32 0, i32 1
  %8 = call i32 @perf_pmu_unregister(i32* %7)
  %9 = load i32, i32* @cpuhp_state_num, align 4
  %10 = load %struct.smmu_pmu*, %struct.smmu_pmu** %3, align 8
  %11 = getelementptr inbounds %struct.smmu_pmu, %struct.smmu_pmu* %10, i32 0, i32 0
  %12 = call i32 @cpuhp_state_remove_instance_nocalls(i32 %9, i32* %11)
  ret i32 0
}

declare dso_local %struct.smmu_pmu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @perf_pmu_unregister(i32*) #1

declare dso_local i32 @cpuhp_state_remove_instance_nocalls(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
