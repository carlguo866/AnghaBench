; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__fprintf_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__fprintf_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"(%d:%d):(%d:%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_event__fprintf_task(%union.perf_event* %0, i32* %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32*, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %union.perf_event*, %union.perf_event** %3, align 8
  %7 = bitcast %union.perf_event* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %union.perf_event*, %union.perf_event** %3, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %union.perf_event*, %union.perf_event** %3, align 8
  %15 = bitcast %union.perf_event* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %union.perf_event*, %union.perf_event** %3, align 8
  %19 = bitcast %union.perf_event* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @fprintf(i32* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %21)
  ret i64 %22
}

declare dso_local i64 @fprintf(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
