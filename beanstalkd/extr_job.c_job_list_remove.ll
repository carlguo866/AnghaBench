; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_job.c_job_list_remove.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_job.c_job_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @job_list_remove(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %5 = icmp ne %struct.TYPE_10__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = call i64 @job_list_is_empty(%struct.TYPE_10__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %30

12:                                               ; preds = %7
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i32 @job_list_reset(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %2, align 8
  br label %30

30:                                               ; preds = %12, %11, %6
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %31
}

declare dso_local i64 @job_list_is_empty(%struct.TYPE_10__*) #1

declare dso_local i32 @job_list_reset(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
