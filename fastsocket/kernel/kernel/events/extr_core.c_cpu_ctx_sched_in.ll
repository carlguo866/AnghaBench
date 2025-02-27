; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_cpu_ctx_sched_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_cpu_ctx_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_context = type { %struct.perf_event_context }
%struct.perf_event_context = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_cpu_context*, i32, %struct.task_struct*)* @cpu_ctx_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_ctx_sched_in(%struct.perf_cpu_context* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.perf_cpu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_cpu_context* %0, %struct.perf_cpu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %8 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %9 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %8, i32 0, i32 0
  store %struct.perf_event_context* %9, %struct.perf_event_context** %7, align 8
  %10 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %11 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = call i32 @ctx_sched_in(%struct.perf_event_context* %10, %struct.perf_cpu_context* %11, i32 %12, %struct.task_struct* %13)
  ret void
}

declare dso_local i32 @ctx_sched_in(%struct.perf_event_context*, %struct.perf_cpu_context*, i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
