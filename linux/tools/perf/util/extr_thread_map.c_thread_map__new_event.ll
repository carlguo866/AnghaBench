; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__new_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__new_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread_map = type { i32 }
%struct.perf_record_thread_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_thread_map* @thread_map__new_event(%struct.perf_record_thread_map* %0) #0 {
  %2 = alloca %struct.perf_record_thread_map*, align 8
  %3 = alloca %struct.perf_thread_map*, align 8
  store %struct.perf_record_thread_map* %0, %struct.perf_record_thread_map** %2, align 8
  %4 = load %struct.perf_record_thread_map*, %struct.perf_record_thread_map** %2, align 8
  %5 = getelementptr inbounds %struct.perf_record_thread_map, %struct.perf_record_thread_map* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.perf_thread_map* @thread_map__alloc(i32 %6)
  store %struct.perf_thread_map* %7, %struct.perf_thread_map** %3, align 8
  %8 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %9 = icmp ne %struct.perf_thread_map* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %12 = load %struct.perf_record_thread_map*, %struct.perf_record_thread_map** %2, align 8
  %13 = call i32 @thread_map__copy_event(%struct.perf_thread_map* %11, %struct.perf_record_thread_map* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  ret %struct.perf_thread_map* %15
}

declare dso_local %struct.perf_thread_map* @thread_map__alloc(i32) #1

declare dso_local i32 @thread_map__copy_event(%struct.perf_thread_map*, %struct.perf_record_thread_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
