; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_list.h___list_cut_position.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_list.h___list_cut_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.list_head*, %struct.list_head*)* @__list_cut_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__list_cut_position(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = load %struct.list_head*, %struct.list_head** %6, align 8
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1
  %10 = load %struct.list_head*, %struct.list_head** %9, align 8
  store %struct.list_head* %10, %struct.list_head** %7, align 8
  %11 = load %struct.list_head*, %struct.list_head** %5, align 8
  %12 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i32 0, i32 1
  store %struct.list_head* %13, %struct.list_head** %15, align 8
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  %17 = load %struct.list_head*, %struct.list_head** %4, align 8
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 1
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 0
  store %struct.list_head* %16, %struct.list_head** %20, align 8
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0
  store %struct.list_head* %21, %struct.list_head** %23, align 8
  %24 = load %struct.list_head*, %struct.list_head** %4, align 8
  %25 = load %struct.list_head*, %struct.list_head** %6, align 8
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i32 0, i32 1
  store %struct.list_head* %24, %struct.list_head** %26, align 8
  %27 = load %struct.list_head*, %struct.list_head** %7, align 8
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i32 0, i32 1
  store %struct.list_head* %27, %struct.list_head** %29, align 8
  %30 = load %struct.list_head*, %struct.list_head** %5, align 8
  %31 = load %struct.list_head*, %struct.list_head** %7, align 8
  %32 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i32 0, i32 0
  store %struct.list_head* %30, %struct.list_head** %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
