; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_pmu_start_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_pmu_start_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }

@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*, i32)* @thread_imc_pmu_start_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_imc_pmu_start_txn(%struct.pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.pmu*, %struct.pmu** %3, align 8
  %13 = call i32 @perf_pmu_disable(%struct.pmu* %12)
  br label %14

14:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @perf_pmu_disable(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
