; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__parse_sample_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__parse_sample_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%union.perf_event = type { i32 }
%struct.evsel = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__parse_sample_timestamp(%struct.evlist* %0, %union.perf_event* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.evlist*, %struct.evlist** %5, align 8
  %10 = load %union.perf_event*, %union.perf_event** %6, align 8
  %11 = call %struct.evsel* @perf_evlist__event2evsel(%struct.evlist* %9, %union.perf_event* %10)
  store %struct.evsel* %11, %struct.evsel** %8, align 8
  %12 = load %struct.evsel*, %struct.evsel** %8, align 8
  %13 = icmp ne %struct.evsel* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.evsel*, %struct.evsel** %8, align 8
  %19 = load %union.perf_event*, %union.perf_event** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @perf_evsel__parse_sample_timestamp(%struct.evsel* %18, %union.perf_event* %19, i32* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.evsel* @perf_evlist__event2evsel(%struct.evlist*, %union.perf_event*) #1

declare dso_local i32 @perf_evsel__parse_sample_timestamp(%struct.evsel*, %union.perf_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
