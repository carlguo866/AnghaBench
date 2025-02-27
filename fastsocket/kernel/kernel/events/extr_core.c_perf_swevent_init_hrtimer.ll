; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_init_hrtimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_init_hrtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__, %struct.hw_perf_event }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.hw_perf_event = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@perf_swevent_hrtimer = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_swevent_init_hrtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_swevent_init_hrtimer(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 1
  store %struct.hw_perf_event* %6, %struct.hw_perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = call i32 @is_sampling_event(%struct.perf_event* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 2
  %14 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %15 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %16 = call i32 @hrtimer_init(%struct.TYPE_4__* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @perf_swevent_hrtimer, align 4
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %11
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* @NSEC_PER_SEC, align 8
  %32 = load i64, i64* %4, align 8
  %33 = sdiv i64 %31, %32
  %34 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %44 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %43, i32 0, i32 1
  %45 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %46 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @local64_set(i32* %44, i64 %47)
  %49 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %10, %26, %11
  ret void
}

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @local64_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
