; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__open_per_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__open_per_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_evsel = type { i32 }
%struct.cpu_map = type { i32 }

@empty_thread_map = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__open_per_cpu(%struct.perf_evsel* %0, %struct.cpu_map* %1) #0 {
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca %struct.cpu_map*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %3, align 8
  store %struct.cpu_map* %1, %struct.cpu_map** %4, align 8
  %5 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %6 = load %struct.cpu_map*, %struct.cpu_map** %4, align 8
  %7 = call i32 @__perf_evsel__open(%struct.perf_evsel* %5, %struct.cpu_map* %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @empty_thread_map, i32 0, i32 0))
  ret i32 %7
}

declare dso_local i32 @__perf_evsel__open(%struct.perf_evsel*, %struct.cpu_map*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
