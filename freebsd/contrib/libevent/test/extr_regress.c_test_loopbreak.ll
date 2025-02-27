; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_loopbreak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_loopbreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Loop break: \00", align 1
@break_cb = common dso_local global i32 0, align 4
@fail_cb = common dso_local global i32 0, align 4
@global_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_loopbreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_loopbreak() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca %struct.event, align 4
  %3 = alloca %struct.timeval, align 8
  %4 = call i32 @setup_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @break_cb, align 4
  %8 = call i32 @evtimer_set(%struct.event* %1, i32 %7, i32* null)
  %9 = call i32 @evtimer_add(%struct.event* %1, %struct.timeval* %3)
  %10 = load i32, i32* @fail_cb, align 4
  %11 = call i32 @evtimer_set(%struct.event* %2, i32 %10, i32* null)
  %12 = call i32 @evtimer_add(%struct.event* %2, %struct.timeval* %3)
  %13 = call i32 (...) @event_dispatch()
  %14 = load i32, i32* @global_base, align 4
  %15 = call i32 @event_base_got_exit(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @tt_assert(i32 %18)
  %20 = load i32, i32* @global_base, align 4
  %21 = call i32 @event_base_got_break(i32 %20)
  %22 = call i32 @tt_assert(i32 %21)
  %23 = call i32 @evtimer_del(%struct.event* %1)
  %24 = call i32 @evtimer_del(%struct.event* %2)
  br label %25

25:                                               ; preds = %0
  %26 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @evtimer_set(%struct.event*, i32, i32*) #1

declare dso_local i32 @evtimer_add(%struct.event*, %struct.timeval*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @event_base_got_exit(i32) #1

declare dso_local i32 @event_base_got_break(i32) #1

declare dso_local i32 @evtimer_del(%struct.event*) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
