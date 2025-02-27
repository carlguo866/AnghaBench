; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_get_leader.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_get_leader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@TASK_NULL = common dso_local global i64 0, align 8
@COALITION_TYPE_JETSAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coalition_get_leader(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load i64, i64* @TASK_NULL, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @TASK_NULL, align 8
  store i64 %9, i64* %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i32 @coalition_lock(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @COALITION_TYPE_JETSAM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %31

19:                                               ; preds = %10
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @TASK_NULL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @task_reference(i64 %28)
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = call i32 @coalition_unlock(%struct.TYPE_7__* %32)
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %31, %8
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i32 @coalition_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @task_reference(i64) #1

declare dso_local i32 @coalition_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
