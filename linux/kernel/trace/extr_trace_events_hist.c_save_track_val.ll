; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_track_val.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_track_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32 }
%struct.tracing_map_elt = type { i32 }
%struct.action_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*, %struct.tracing_map_elt*, %struct.action_data*, i32)* @save_track_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_track_val(%struct.hist_trigger_data* %0, %struct.tracing_map_elt* %1, %struct.action_data* %2, i32 %3) #0 {
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.tracing_map_elt*, align 8
  %7 = alloca %struct.action_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %5, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %6, align 8
  store %struct.action_data* %2, %struct.action_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.action_data*, %struct.action_data** %7, align 8
  %11 = getelementptr inbounds %struct.action_data, %struct.action_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @tracing_map_set_var(%struct.tracing_map_elt* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @tracing_map_set_var(%struct.tracing_map_elt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
