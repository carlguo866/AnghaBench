; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/bl4ckout31/src/extr_fork.c_copy_process.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/bl4ckout31/src/extr_fork.c_copy_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.task_struct = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4
@nr_tasks = common dso_local global i32 0, align 4
@task = common dso_local global %struct.task_struct** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Process created, pid: %d, sp: 0x%x\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_process(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @preempt_disable()
  %9 = call i64 (...) @get_free_page()
  %10 = inttoptr i64 %9 to %struct.task_struct*
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @TASK_RUNNING, align 4
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* @ret_from_fork, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 %38, i64* %41, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %43 = ptrtoint %struct.task_struct* %42 to i64
  %44 = load i32, i32* @THREAD_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @nr_tasks, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @nr_tasks, align 4
  store i32 %51, i32* %7, align 4
  %53 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %54 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %54, i64 %56
  store %struct.task_struct* %53, %struct.task_struct** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62)
  %64 = call i32 (...) @preempt_enable()
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %14, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @get_free_page(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
