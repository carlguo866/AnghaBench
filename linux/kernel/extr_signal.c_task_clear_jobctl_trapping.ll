; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_clear_jobctl_trapping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_clear_jobctl_trapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@JOBCTL_TRAPPING = common dso_local global i32 0, align 4
@JOBCTL_TRAPPING_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_clear_jobctl_trapping(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @JOBCTL_TRAPPING, align 4
  %7 = and i32 %5, %6
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @JOBCTL_TRAPPING, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = call i32 (...) @smp_mb()
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i32, i32* @JOBCTL_TRAPPING_BIT, align 4
  %21 = call i32 @wake_up_bit(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
