; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_dualq.c_sched_dualq_initial_thread_sched_mode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_dualq.c_sched_dualq_initial_thread_sched_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_task = common dso_local global i64 0, align 8
@TH_MODE_FIXED = common dso_local global i32 0, align 4
@TH_MODE_TIMESHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @sched_dualq_initial_thread_sched_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_dualq_initial_thread_sched_mode(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @kernel_task, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @TH_MODE_FIXED, align 4
  store i32 %8, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @TH_MODE_TIMESHARE, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
