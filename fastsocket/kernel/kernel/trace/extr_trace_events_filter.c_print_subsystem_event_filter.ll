; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_print_subsystem_event_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_print_subsystem_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_subsystem = type { %struct.event_filter* }
%struct.event_filter = type { i64 }
%struct.trace_seq = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_subsystem_event_filter(%struct.event_subsystem* %0, %struct.trace_seq* %1) #0 {
  %3 = alloca %struct.event_subsystem*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.event_filter*, align 8
  store %struct.event_subsystem* %0, %struct.event_subsystem** %3, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %4, align 8
  %6 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %7 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %6, i32 0, i32 0
  %8 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  store %struct.event_filter* %8, %struct.event_filter** %5, align 8
  %9 = call i32 @mutex_lock(i32* @event_mutex)
  %10 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %11 = icmp ne %struct.event_filter* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %14 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %19 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %20 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %26

23:                                               ; preds = %12, %2
  %24 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %25 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  %27 = call i32 @mutex_unlock(i32* @event_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
