; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_set_task_reclaim_state.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_set_task_reclaim_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.reclaim_state* }
%struct.reclaim_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.reclaim_state*)* @set_task_reclaim_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_task_reclaim_state(%struct.task_struct* %0, %struct.reclaim_state* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.reclaim_state*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.reclaim_state* %1, %struct.reclaim_state** %4, align 8
  %5 = load %struct.reclaim_state*, %struct.reclaim_state** %4, align 8
  %6 = icmp ne %struct.reclaim_state* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load %struct.reclaim_state*, %struct.reclaim_state** %9, align 8
  %11 = icmp ne %struct.reclaim_state* %10, null
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON_ONCE(i32 %14)
  %16 = load %struct.reclaim_state*, %struct.reclaim_state** %4, align 8
  %17 = icmp ne %struct.reclaim_state* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load %struct.reclaim_state*, %struct.reclaim_state** %20, align 8
  %22 = icmp ne %struct.reclaim_state* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i1 [ false, %12 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.reclaim_state*, %struct.reclaim_state** %4, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  store %struct.reclaim_state* %28, %struct.reclaim_state** %30, align 8
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
