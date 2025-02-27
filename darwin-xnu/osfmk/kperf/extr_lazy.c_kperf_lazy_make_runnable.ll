; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_lazy.c_kperf_lazy_make_runnable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_lazy.c_kperf_lazy_make_runnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@THREAD_NOT_RUNNABLE = common dso_local global i64 0, align 8
@kperf_lazy_wait_time_threshold = common dso_local global i64 0, align 8
@PERF_LZ_MKRUNNABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_lazy_make_runnable(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @THREAD_NOT_RUNNABLE, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = call i64 @thread_get_last_wait_duration(%struct.TYPE_5__* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @kperf_lazy_wait_time_threshold, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32, i32* @PERF_LZ_MKRUNNABLE, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = call i64 @thread_tid(%struct.TYPE_5__* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = call i32 @BUF_DATA(i32 %28, i64 %30, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %20, %27, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @thread_get_last_wait_duration(%struct.TYPE_5__*) #1

declare dso_local i32 @BUF_DATA(i32, i64, i32, i32) #1

declare dso_local i64 @thread_tid(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
