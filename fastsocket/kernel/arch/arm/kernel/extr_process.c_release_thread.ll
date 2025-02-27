; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_release_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_release_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i32 }

@THREAD_NOTIFY_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_thread(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.thread_info*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %4)
  store %struct.thread_info* %5, %struct.thread_info** %3, align 8
  %6 = load i32, i32* @THREAD_NOTIFY_RELEASE, align 4
  %7 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %8 = call i32 @thread_notify(i32 %6, %struct.thread_info* %7)
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @thread_notify(i32, %struct.thread_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
