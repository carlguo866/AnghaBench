; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___trace_add_new_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___trace_add_new_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_array = type { i32 }
%struct.trace_event_file = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_call*, %struct.trace_array*)* @__trace_add_new_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__trace_add_new_event(%struct.trace_event_call* %0, %struct.trace_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.trace_event_file*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %4, align 8
  store %struct.trace_array* %1, %struct.trace_array** %5, align 8
  %7 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %8 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %9 = call %struct.trace_event_file* @trace_create_new_event(%struct.trace_event_call* %7, %struct.trace_array* %8)
  store %struct.trace_event_file* %9, %struct.trace_event_file** %6, align 8
  %10 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %11 = icmp ne %struct.trace_event_file* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %17 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %20 = call i32 @event_create_dir(i32 %18, %struct.trace_event_file* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.trace_event_file* @trace_create_new_event(%struct.trace_event_call*, %struct.trace_array*) #1

declare dso_local i32 @event_create_dir(i32, %struct.trace_event_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
