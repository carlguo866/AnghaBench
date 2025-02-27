; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__process_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__process_events(%struct.perf_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_session*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  %4 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %5 = call i64 @perf_session__register_idle_thread(%struct.perf_session* %4)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %12 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @perf_data__is_pipe(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %18 = call i32 @__perf_session__process_pipe_events(%struct.perf_session* %17)
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %10
  %20 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %21 = call i32 @__perf_session__process_events(%struct.perf_session* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %16, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @perf_session__register_idle_thread(%struct.perf_session*) #1

declare dso_local i64 @perf_data__is_pipe(i32) #1

declare dso_local i32 @__perf_session__process_pipe_events(%struct.perf_session*) #1

declare dso_local i32 @__perf_session__process_events(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
