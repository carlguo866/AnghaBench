; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_traceoff_trigger_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_traceoff_trigger_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.event_trigger_ops = type { i32 }
%struct.event_trigger_data = type { i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"traceoff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.event_trigger_ops*, %struct.event_trigger_data*)* @traceoff_trigger_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traceoff_trigger_print(%struct.seq_file* %0, %struct.event_trigger_ops* %1, %struct.event_trigger_data* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.event_trigger_ops*, align 8
  %6 = alloca %struct.event_trigger_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.event_trigger_ops* %1, %struct.event_trigger_ops** %5, align 8
  store %struct.event_trigger_data* %2, %struct.event_trigger_data** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load %struct.event_trigger_data*, %struct.event_trigger_data** %6, align 8
  %9 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.event_trigger_data*, %struct.event_trigger_data** %6, align 8
  %13 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @event_trigger_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.seq_file* %7, i8* %11, i32 %14)
  ret i32 %15
}

declare dso_local i32 @event_trigger_print(i8*, %struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
