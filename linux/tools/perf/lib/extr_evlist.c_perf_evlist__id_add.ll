; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c_perf_evlist__id_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c_perf_evlist__id_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evlist__id_add(%struct.perf_evlist* %0, %struct.perf_evsel* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.perf_evlist*, align 8
  %7 = alloca %struct.perf_evsel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_evlist* %0, %struct.perf_evlist** %6, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.perf_evlist*, %struct.perf_evlist** %6, align 8
  %12 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @perf_evlist__id_hash(%struct.perf_evlist* %11, %struct.perf_evsel* %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %19 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %22 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  store i32 %17, i32* %26, align 4
  ret void
}

declare dso_local i32 @perf_evlist__id_hash(%struct.perf_evlist*, %struct.perf_evsel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
