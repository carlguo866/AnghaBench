; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__exit(%struct.perf_evsel* %0) #0 {
  %2 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %2, align 8
  %3 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %4 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %3, i32 0, i32 3
  %5 = call i32 @list_empty(i32* %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %8 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @xyarray__delete(i32 %9)
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %12 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @xyarray__delete(i32 %13)
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %16 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free(i32 %17)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @xyarray__delete(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
