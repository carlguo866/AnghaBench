; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xtensa_pmu_events = type { i32 }

@xtensa_pmu_events = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @xtensa_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtensa_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xtensa_pmu_events*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.xtensa_pmu_events* @this_cpu_ptr(i32* @xtensa_pmu_events)
  store %struct.xtensa_pmu_events* %6, %struct.xtensa_pmu_events** %5, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = load i32, i32* @PERF_EF_UPDATE, align 4
  %9 = call i32 @xtensa_pmu_stop(%struct.perf_event* %7, i32 %8)
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %5, align 8
  %15 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__clear_bit(i32 %13, i32 %16)
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i32 @perf_event_update_userpage(%struct.perf_event* %18)
  ret void
}

declare dso_local %struct.xtensa_pmu_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @xtensa_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
