; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event = type { i64, i32, %struct.event_base* }

@EVLIST_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_base_set(%struct.event_base* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.event*, align 8
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %6 = load %struct.event*, %struct.event** %5, align 8
  %7 = getelementptr inbounds %struct.event, %struct.event* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EVLIST_INIT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.event*, %struct.event** %5, align 8
  %14 = call i32 @event_debug_assert_is_setup_(%struct.event* %13)
  %15 = load %struct.event_base*, %struct.event_base** %4, align 8
  %16 = load %struct.event*, %struct.event** %5, align 8
  %17 = getelementptr inbounds %struct.event, %struct.event* %16, i32 0, i32 2
  store %struct.event_base* %15, %struct.event_base** %17, align 8
  %18 = load %struct.event_base*, %struct.event_base** %4, align 8
  %19 = getelementptr inbounds %struct.event_base, %struct.event_base* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 2
  %22 = load %struct.event*, %struct.event** %5, align 8
  %23 = getelementptr inbounds %struct.event, %struct.event* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @event_debug_assert_is_setup_(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
