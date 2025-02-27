; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_defer_callbacks.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_defer_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i32, %struct.event_base* }
%struct.event_base = type { i32 }

@evbuffer_deferred_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_defer_callbacks(%struct.evbuffer* %0, %struct.event_base* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.event_base*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.event_base* %1, %struct.event_base** %4, align 8
  %5 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %6 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %5)
  %7 = load %struct.event_base*, %struct.event_base** %4, align 8
  %8 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %9 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %8, i32 0, i32 2
  store %struct.event_base* %7, %struct.event_base** %9, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %13 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %12, i32 0, i32 1
  %14 = load %struct.event_base*, %struct.event_base** %4, align 8
  %15 = call i32 @event_base_get_npriorities(%struct.event_base* %14)
  %16 = sdiv i32 %15, 2
  %17 = load i32, i32* @evbuffer_deferred_callback, align 4
  %18 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %19 = call i32 @event_deferred_cb_init_(i32* %13, i32 %16, i32 %17, %struct.evbuffer* %18)
  %20 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %21 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %20)
  ret i32 0
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @event_deferred_cb_init_(i32*, i32, i32, %struct.evbuffer*) #1

declare dso_local i32 @event_base_get_npriorities(%struct.event_base*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
