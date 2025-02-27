; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_find_probe_point_lazy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_find_probe_point_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@probe_point_lazy_walker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_finder*)* @find_probe_point_lazy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_probe_point_lazy(i32* %0, %struct.probe_finder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.probe_finder*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.probe_finder* %1, %struct.probe_finder** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %8 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %7, i32 0, i32 2
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %13 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %12, i32 0, i32 2
  %14 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %15 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %18 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @find_lazy_match_lines(i32* %13, i32 %16, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @probe_point_lazy_walker, align 4
  %32 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %33 = call i32 @die_walk_lines(i32* %30, i32 %31, %struct.probe_finder* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @find_lazy_match_lines(i32*, i32, i32) #1

declare dso_local i32 @die_walk_lines(i32*, i32, %struct.probe_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
