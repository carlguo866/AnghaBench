; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.taskqueue = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"tq_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread**, %struct.taskqueue*)* @taskqueue_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taskqueue_terminate(%struct.thread** %0, %struct.taskqueue* %1) #0 {
  %3 = alloca %struct.thread**, align 8
  %4 = alloca %struct.taskqueue*, align 8
  store %struct.thread** %0, %struct.thread*** %3, align 8
  store %struct.taskqueue* %1, %struct.taskqueue** %4, align 8
  br label %5

5:                                                ; preds = %17, %2
  %6 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %7 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %12 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi i1 [ true, %5 ], [ %14, %10 ]
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %19 = call i32 @wakeup(%struct.taskqueue* %18)
  %20 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %21 = load %struct.thread**, %struct.thread*** %3, align 8
  %22 = call i32 @TQ_SLEEP(%struct.taskqueue* %20, %struct.thread** %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %5

23:                                               ; preds = %15
  ret void
}

declare dso_local i32 @wakeup(%struct.taskqueue*) #1

declare dso_local i32 @TQ_SLEEP(%struct.taskqueue*, %struct.thread**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
