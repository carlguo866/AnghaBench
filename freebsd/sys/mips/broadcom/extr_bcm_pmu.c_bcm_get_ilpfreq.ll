; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_ilpfreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_ilpfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { i32 }

@BHND_PMU_ILP_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_get_ilpfreq(%struct.bcm_platform* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_platform*, align 8
  store %struct.bcm_platform* %0, %struct.bcm_platform** %3, align 8
  %4 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %5 = call i32 @bcm_has_pmu(%struct.bcm_platform* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @BHND_PMU_ILP_CLOCK, align 4
  store i32 %8, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %11 = call i32 @bcm_get_pmu(%struct.bcm_platform* %10)
  %12 = call i32 @bhnd_pmu_ilp_clock(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %9, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @bcm_has_pmu(%struct.bcm_platform*) #1

declare dso_local i32 @bhnd_pmu_ilp_clock(i32) #1

declare dso_local i32 @bcm_get_pmu(%struct.bcm_platform*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
