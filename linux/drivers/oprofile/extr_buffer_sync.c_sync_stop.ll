; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_sync_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_sync_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@module_load_nb = common dso_local global i32 0, align 4
@PROFILE_MUNMAP = common dso_local global i32 0, align 4
@munmap_nb = common dso_local global i32 0, align 4
@PROFILE_TASK_EXIT = common dso_local global i32 0, align 4
@task_exit_nb = common dso_local global i32 0, align 4
@task_free_nb = common dso_local global i32 0, align 4
@marked_cpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_stop() #0 {
  %1 = call i32 (...) @end_cpu_work()
  %2 = call i32 @unregister_module_notifier(i32* @module_load_nb)
  %3 = load i32, i32* @PROFILE_MUNMAP, align 4
  %4 = call i32 @profile_event_unregister(i32 %3, i32* @munmap_nb)
  %5 = load i32, i32* @PROFILE_TASK_EXIT, align 4
  %6 = call i32 @profile_event_unregister(i32 %5, i32* @task_exit_nb)
  %7 = call i32 @task_handoff_unregister(i32* @task_free_nb)
  %8 = call i32 (...) @barrier()
  %9 = call i32 (...) @flush_cpu_work()
  %10 = call i32 (...) @free_all_tasks()
  %11 = load i32, i32* @marked_cpus, align 4
  %12 = call i32 @free_cpumask_var(i32 %11)
  ret void
}

declare dso_local i32 @end_cpu_work(...) #1

declare dso_local i32 @unregister_module_notifier(i32*) #1

declare dso_local i32 @profile_event_unregister(i32, i32*) #1

declare dso_local i32 @task_handoff_unregister(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @flush_cpu_work(...) #1

declare dso_local i32 @free_all_tasks(...) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
