; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_..utilevsel.h_perf_evsel__has_branch_callstack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_..utilevsel.h_perf_evsel__has_branch_callstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PERF_SAMPLE_BRANCH_CALL_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*)* @perf_evsel__has_branch_callstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__has_branch_callstack(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %3 = load %struct.evsel*, %struct.evsel** %2, align 8
  %4 = getelementptr inbounds %struct.evsel, %struct.evsel* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PERF_SAMPLE_BRANCH_CALL_STACK, align 4
  %9 = and i32 %7, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
