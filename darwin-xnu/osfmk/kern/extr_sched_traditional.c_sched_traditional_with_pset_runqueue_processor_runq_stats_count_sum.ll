; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_traditional.c_sched_traditional_with_pset_runqueue_processor_runq_stats_count_sum.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_traditional.c_sched_traditional_with_pset_runqueue_processor_runq_stats_count_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @sched_traditional_with_pset_runqueue_processor_runq_stats_count_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sched_traditional_with_pset_runqueue_processor_runq_stats_count_sum(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %6, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call %struct.TYPE_10__* @runq_for_processor(%struct.TYPE_9__* %14)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %2, align 8
  br label %20

19:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local %struct.TYPE_10__* @runq_for_processor(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
