; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/arch/extr_..utilmap.h_map_groups__find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/arch/extr_..utilmap.h_map_groups__find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.map_groups = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.map* (%struct.map_groups*, i32, i32)* @map_groups__find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.map* @map_groups__find(%struct.map_groups* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.map_groups*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.map_groups* %0, %struct.map_groups** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.map_groups*, %struct.map_groups** %4, align 8
  %8 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.map* @maps__find(i32* %12, i32 %13)
  ret %struct.map* %14
}

declare dso_local %struct.map* @maps__find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
