; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.h_callchain_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.h_callchain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_root = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32*, i32, i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callchain_root*)* @callchain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callchain_init(%struct.callchain_root* %0) #0 {
  %2 = alloca %struct.callchain_root*, align 8
  store %struct.callchain_root* %0, %struct.callchain_root** %2, align 8
  %3 = load %struct.callchain_root*, %struct.callchain_root** %2, align 8
  %4 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 5
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.callchain_root*, %struct.callchain_root** %2, align 8
  %8 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.callchain_root*, %struct.callchain_root** %2, align 8
  %12 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.callchain_root*, %struct.callchain_root** %2, align 8
  %15 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.callchain_root*, %struct.callchain_root** %2, align 8
  %18 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @RB_ROOT, align 4
  %21 = load %struct.callchain_root*, %struct.callchain_root** %2, align 8
  %22 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.callchain_root*, %struct.callchain_root** %2, align 8
  %25 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
