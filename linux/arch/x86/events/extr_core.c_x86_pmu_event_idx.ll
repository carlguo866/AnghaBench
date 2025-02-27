; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@PERF_X86_EVENT_RDPMC_ALLOWED = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INTEL_PMC_IDX_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @x86_pmu_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_pmu_event_idx(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PERF_X86_EVENT_RDPMC_ALLOWED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, 1073741824
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %24, %20, %17
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
