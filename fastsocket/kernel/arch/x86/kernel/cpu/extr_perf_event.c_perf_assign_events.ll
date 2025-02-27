; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_assign_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_assign_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.perf_sched = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_assign_events(%struct.event_constraint** %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.event_constraint**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.perf_sched, align 8
  store %struct.event_constraint** %0, %struct.event_constraint*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.event_constraint**, %struct.event_constraint*** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @perf_sched_init(%struct.perf_sched* %11, %struct.event_constraint** %12, i32 %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %34, %5
  %18 = call i32 @perf_sched_find_counter(%struct.perf_sched* %11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %37

21:                                               ; preds = %17
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %11, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %11, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %27, i32* %32, align 4
  br label %33

33:                                               ; preds = %24, %21
  br label %34

34:                                               ; preds = %33
  %35 = call i64 @perf_sched_next_event(%struct.perf_sched* %11)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %17, label %37

37:                                               ; preds = %34, %20
  %38 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i32 @perf_sched_init(%struct.perf_sched*, %struct.event_constraint**, i32, i32, i32) #1

declare dso_local i32 @perf_sched_find_counter(%struct.perf_sched*) #1

declare dso_local i64 @perf_sched_next_event(%struct.perf_sched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
