; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_freezer.c_freezing_slow_path.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_freezer.c_freezing_slow_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PF_NOFREEZE = common dso_local global i32 0, align 4
@PF_SUSPEND_TASK = common dso_local global i32 0, align 4
@TIF_MEMDIE = common dso_local global i32 0, align 4
@pm_nosig_freezing = common dso_local global i64 0, align 8
@pm_freezing = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freezing_slow_path(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PF_NOFREEZE, align 4
  %8 = load i32, i32* @PF_SUSPEND_TASK, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = load i32, i32* @TIF_MEMDIE, align 4
  %16 = call i64 @test_tsk_thread_flag(%struct.task_struct* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %39

19:                                               ; preds = %13
  %20 = load i64, i64* @pm_nosig_freezing, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = call i64 @cgroup_freezing(%struct.task_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19
  store i32 1, i32* %2, align 4
  br label %39

27:                                               ; preds = %22
  %28 = load i64, i64* @pm_freezing, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PF_KTHREAD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %39

38:                                               ; preds = %30, %27
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %26, %18, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @cgroup_freezing(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
