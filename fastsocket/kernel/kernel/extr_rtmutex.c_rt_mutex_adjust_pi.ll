; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_adjust_pi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_adjust_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, %struct.rt_mutex_waiter* }
%struct.rt_mutex_waiter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_mutex_adjust_pi(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rt_mutex_waiter*, align 8
  %4 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 2
  %11 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %10, align 8
  store %struct.rt_mutex_waiter* %11, %struct.rt_mutex_waiter** %3, align 8
  %12 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %13 = icmp ne %struct.rt_mutex_waiter* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %16 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %14, %1
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %34 = call i32 @get_task_struct(%struct.task_struct* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %37 = call i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* %35, i32 0, i32* null, i32* null, %struct.task_struct* %36)
  br label %38

38:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rt_mutex_adjust_prio_chain(%struct.task_struct*, i32, i32*, i32*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
