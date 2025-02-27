; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_update_pcrs_for_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_update_pcrs_for_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_hw_events = type { i64 }

@sparc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @update_pcrs_for_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pcrs_for_enable(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %3 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %4 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %9 = call i32 @read_in_all_counters(%struct.cpu_hw_events* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %17 = call i32 @calculate_single_pcr(%struct.cpu_hw_events* %16)
  br label %21

18:                                               ; preds = %10
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %20 = call i32 @calculate_multiple_pcrs(%struct.cpu_hw_events* %19)
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @read_in_all_counters(%struct.cpu_hw_events*) #1

declare dso_local i32 @calculate_single_pcr(%struct.cpu_hw_events*) #1

declare dso_local i32 @calculate_multiple_pcrs(%struct.cpu_hw_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
