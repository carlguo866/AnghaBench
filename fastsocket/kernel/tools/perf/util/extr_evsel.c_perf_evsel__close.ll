; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__close(%struct.perf_evsel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %8 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %21

12:                                               ; preds = %3
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @perf_evsel__close_fd(%struct.perf_evsel* %13, i32 %14, i32 %15)
  %17 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %18 = call i32 @perf_evsel__free_fd(%struct.perf_evsel* %17)
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %20 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @perf_evsel__close_fd(%struct.perf_evsel*, i32, i32) #1

declare dso_local i32 @perf_evsel__free_fd(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
