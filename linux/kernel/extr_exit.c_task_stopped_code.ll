; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_task_stopped_code.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_task_stopped_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@JOBCTL_LISTENING = common dso_local global i32 0, align 4
@SIGNAL_STOP_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.task_struct*, i32)* @task_stopped_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @task_stopped_code(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call i64 @task_is_traced(%struct.task_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @JOBCTL_LISTENING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 1
  store i32* %21, i32** %3, align 8
  br label %39

22:                                               ; preds = %12, %8
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32* %36, i32** %3, align 8
  br label %39

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %22
  store i32* null, i32** %3, align 8
  br label %39

39:                                               ; preds = %38, %32, %19
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i64 @task_is_traced(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
