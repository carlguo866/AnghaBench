; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_disable_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_disable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i915_perf_stream*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @i915_perf_disable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_perf_disable_locked(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %3 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %4 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %10 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %12 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %14, align 8
  %16 = icmp ne i32 (%struct.i915_perf_stream*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %19 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %21, align 8
  %23 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %24 = call i32 %22(%struct.i915_perf_stream* %23)
  br label %25

25:                                               ; preds = %7, %17, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
