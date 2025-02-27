; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_finalize_nolock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_finalize_nolock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EVENT_FINALIZE_FREE_ = common dso_local global i32 0, align 4
@EV_CLOSURE_EVENT_FINALIZE_FREE = common dso_local global i32 0, align 4
@EV_CLOSURE_EVENT_FINALIZE = common dso_local global i32 0, align 4
@EVENT_DEL_NOBLOCK = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@EVLIST_FINALIZING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, i32, %struct.event*, i32)* @event_finalize_nolock_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_finalize_nolock_(%struct.event_base* %0, i32 %1, %struct.event* %2, i32 %3) #0 {
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.event* %2, %struct.event** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EVENT_FINALIZE_FREE_, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @EV_CLOSURE_EVENT_FINALIZE_FREE, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EV_CLOSURE_EVENT_FINALIZE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4
  %20 = load %struct.event*, %struct.event** %7, align 8
  %21 = load i32, i32* @EVENT_DEL_NOBLOCK, align 4
  %22 = call i32 @event_del_nolock_(%struct.event* %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.event*, %struct.event** %7, align 8
  %25 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.event*, %struct.event** %7, align 8
  %28 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.event*, %struct.event** %7, align 8
  %32 = load i32, i32* @EV_FINALIZE, align 4
  %33 = call i32 @event_active_nolock_(%struct.event* %31, i32 %32, i32 1)
  %34 = load i32, i32* @EVLIST_FINALIZING, align 4
  %35 = load %struct.event*, %struct.event** %7, align 8
  %36 = getelementptr inbounds %struct.event, %struct.event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @event_del_nolock_(%struct.event*, i32) #1

declare dso_local i32 @event_active_nolock_(%struct.event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
