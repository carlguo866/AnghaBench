; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_clear_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_clear_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_hw_events = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu_hw_events*, %struct.perf_event*)* @armv8pmu_clear_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armv8pmu_clear_event_idx(%struct.pmu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.pmu_hw_events*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu_hw_events* %0, %struct.pmu_hw_events** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %3, align 8
  %12 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clear_bit(i32 %10, i32 %13)
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = call i64 @armv8pmu_event_is_chained(%struct.perf_event* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %3, align 8
  %22 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @armv8pmu_event_is_chained(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
