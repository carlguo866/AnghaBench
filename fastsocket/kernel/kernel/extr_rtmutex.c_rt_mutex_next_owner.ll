; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_next_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_next_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rt_mutex = type { i32 }
%struct.TYPE_2__ = type { %struct.task_struct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @rt_mutex_next_owner(%struct.rt_mutex* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rt_mutex*, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %3, align 8
  %4 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %5 = call i32 @rt_mutex_has_waiters(%struct.rt_mutex* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.task_struct* null, %struct.task_struct** %2, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %10 = call %struct.TYPE_2__* @rt_mutex_top_waiter(%struct.rt_mutex* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  store %struct.task_struct* %12, %struct.task_struct** %2, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %14
}

declare dso_local i32 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local %struct.TYPE_2__* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
