; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_get_rr_interval_rt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_get_rr_interval_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i64 }

@SCHED_RR = common dso_local global i64 0, align 8
@sched_rr_timeslice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rr_interval_rt(%struct.rq* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SCHED_RR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @sched_rr_timeslice, align 4
  store i32 %12, i32* %3, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
