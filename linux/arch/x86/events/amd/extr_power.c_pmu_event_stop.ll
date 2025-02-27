; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_power.c_pmu_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_power.c_pmu_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @pmu_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %5, align 8
  %8 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %9 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PERF_HES_STOPPED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @PERF_HES_STOPPED, align 4
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PERF_EF_UPDATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = call i32 @event_update(%struct.perf_event* %33)
  %35 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %25, %20
  ret void
}

declare dso_local i32 @event_update(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
