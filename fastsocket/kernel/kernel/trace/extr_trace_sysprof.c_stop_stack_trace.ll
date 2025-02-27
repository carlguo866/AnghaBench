; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sysprof.c_stop_stack_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sysprof.c_stop_stack_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }

@sample_timer_lock = common dso_local global i32 0, align 4
@tracer_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*)* @stop_stack_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_stack_trace(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %3 = call i32 @mutex_lock(i32* @sample_timer_lock)
  %4 = call i32 (...) @stop_stack_timers()
  store i64 0, i64* @tracer_enabled, align 8
  %5 = call i32 @mutex_unlock(i32* @sample_timer_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stop_stack_timers(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
