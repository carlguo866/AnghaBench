; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_hw_perf_event_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_hw_perf_event_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.perf_event = type { i32 }

@active_events = common dso_local global i32 0, align 4
@pmu_reserve_mutex = common dso_local global i32 0, align 4
@reset_counters = common dso_local global i32 0, align 4
@mipspmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @hw_perf_event_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_perf_event_destroy(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %3 = call i64 @atomic_dec_and_mutex_lock(i32* @active_events, i32* @pmu_reserve_mutex)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, i32* @reset_counters, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 0), align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @on_each_cpu(i32 %6, i8* %8, i32 1)
  %10 = call i32 (...) @mipspmu_free_irq()
  %11 = call i32 @mutex_unlock(i32* @pmu_reserve_mutex)
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @on_each_cpu(i32, i8*, i32) #1

declare dso_local i32 @mipspmu_free_irq(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
