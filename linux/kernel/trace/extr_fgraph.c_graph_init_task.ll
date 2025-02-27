; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_graph_init_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_graph_init_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.ftrace_ret_stack*, i64, i32, i32 }
%struct.ftrace_ret_stack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.ftrace_ret_stack*)* @graph_init_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_init_task(%struct.task_struct* %0, %struct.ftrace_ret_stack* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.ftrace_ret_stack*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.ftrace_ret_stack* %1, %struct.ftrace_ret_stack** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 3
  %7 = call i32 @atomic_set(i32* %6, i32 0)
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 2
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = call i32 (...) @smp_wmb()
  %14 = load %struct.ftrace_ret_stack*, %struct.ftrace_ret_stack** %4, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  store %struct.ftrace_ret_stack* %14, %struct.ftrace_ret_stack** %16, align 8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
