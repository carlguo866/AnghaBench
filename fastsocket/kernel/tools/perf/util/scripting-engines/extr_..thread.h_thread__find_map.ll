; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_..thread.h_thread__find_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_..thread.h_thread__find_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.map* (%struct.thread*, i32, i32)* @thread__find_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.map* @thread__find_map(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = icmp ne %struct.thread* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.map* @map_groups__find(i32* %11, i32 %12, i32 %13)
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi %struct.map* [ %14, %9 ], [ null, %15 ]
  ret %struct.map* %17
}

declare dso_local %struct.map* @map_groups__find(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
