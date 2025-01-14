; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_setup_time_range.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_setup_time_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.intel_pt_queue = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt*, %struct.intel_pt_queue*)* @intel_pt_setup_time_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_setup_time_range(%struct.intel_pt* %0, %struct.intel_pt_queue* %1) #0 {
  %3 = alloca %struct.intel_pt*, align 8
  %4 = alloca %struct.intel_pt_queue*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %3, align 8
  store %struct.intel_pt_queue* %1, %struct.intel_pt_queue** %4, align 8
  %5 = load %struct.intel_pt*, %struct.intel_pt** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.intel_pt*, %struct.intel_pt** %3, align 8
  %12 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %18 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %20 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %22 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %27 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %39

28:                                               ; preds = %10
  %29 = load %struct.intel_pt*, %struct.intel_pt** %3, align 8
  %30 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %36 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %38 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %9, %28, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
