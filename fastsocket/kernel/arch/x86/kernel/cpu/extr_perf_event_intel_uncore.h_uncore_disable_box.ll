; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.h_uncore_disable_box.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.h_uncore_disable_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.intel_uncore_box*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*)* @uncore_disable_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_disable_box(%struct.intel_uncore_box* %0) #0 {
  %2 = alloca %struct.intel_uncore_box*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %2, align 8
  %3 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %4 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32 (%struct.intel_uncore_box*)*, i32 (%struct.intel_uncore_box*)** %10, align 8
  %12 = icmp ne i32 (%struct.intel_uncore_box*)* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %15 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.intel_uncore_box*)*, i32 (%struct.intel_uncore_box*)** %21, align 8
  %23 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %24 = call i32 %22(%struct.intel_uncore_box* %23)
  br label %25

25:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
