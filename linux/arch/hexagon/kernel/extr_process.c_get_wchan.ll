; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hexagon_switch_stack = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %13 = icmp eq %struct.task_struct* %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TASK_RUNNING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %10, %1
  store i64 0, i64* %2, align 8
  br label %64

21:                                               ; preds = %14
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call i64 @task_stack_page(%struct.task_struct* %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.hexagon_switch_stack*
  %29 = getelementptr inbounds %struct.hexagon_switch_stack, %struct.hexagon_switch_stack* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %59, %21
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 4
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @THREAD_SIZE, align 4
  %39 = sub nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  %43 = icmp uge i64 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %31
  store i64 0, i64* %2, align 8
  br label %64

45:                                               ; preds = %36
  %46 = load i64, i64* %4, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @in_sched_functions(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %2, align 8
  br label %64

55:                                               ; preds = %45
  %56 = load i64, i64* %4, align 8
  %57 = inttoptr i64 %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = icmp slt i32 %60, 16
  br i1 %62, label %31, label %63

63:                                               ; preds = %59
  store i64 0, i64* %2, align 8
  br label %64

64:                                               ; preds = %63, %53, %44, %20
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
