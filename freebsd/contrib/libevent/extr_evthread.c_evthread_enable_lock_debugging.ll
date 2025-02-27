; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evthread.c_evthread_enable_lock_debugging.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evthread.c_evthread_enable_lock_debugging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evthread_lock_callbacks = type { i32, i32, i32, i32, i32, i32, i32 }

@EVTHREAD_LOCK_API_VERSION = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@debug_lock_alloc = common dso_local global i32 0, align 4
@debug_lock_free = common dso_local global i32 0, align 4
@debug_lock_lock = common dso_local global i32 0, align 4
@debug_lock_unlock = common dso_local global i32 0, align 4
@evthread_lock_debugging_enabled_ = common dso_local global i32 0, align 4
@original_lock_fns_ = common dso_local global %struct.evthread_lock_callbacks zeroinitializer, align 4
@evthread_lock_fns_ = common dso_local global %struct.evthread_lock_callbacks zeroinitializer, align 4
@original_cond_fns_ = common dso_local global %struct.evthread_lock_callbacks zeroinitializer, align 4
@evthread_cond_fns_ = common dso_local global %struct.evthread_lock_callbacks zeroinitializer, align 4
@debug_cond_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evthread_enable_lock_debugging() #0 {
  %1 = alloca %struct.evthread_lock_callbacks, align 4
  %2 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 0
  %3 = load i32, i32* @EVTHREAD_LOCK_API_VERSION, align 4
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 1
  %5 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 2
  %7 = load i32, i32* @debug_lock_alloc, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 3
  %9 = load i32, i32* @debug_lock_free, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 4
  %11 = load i32, i32* @debug_lock_lock, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 5
  %13 = load i32, i32* @debug_lock_unlock, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 6
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @evthread_lock_debugging_enabled_, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %24

18:                                               ; preds = %0
  %19 = call i32 @memcpy(%struct.evthread_lock_callbacks* @original_lock_fns_, %struct.evthread_lock_callbacks* @evthread_lock_fns_, i32 28)
  %20 = call i32 @memcpy(%struct.evthread_lock_callbacks* @evthread_lock_fns_, %struct.evthread_lock_callbacks* %1, i32 28)
  %21 = call i32 @memcpy(%struct.evthread_lock_callbacks* @original_cond_fns_, %struct.evthread_lock_callbacks* @evthread_cond_fns_, i32 4)
  %22 = load i32, i32* @debug_cond_wait, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* @evthread_cond_fns_, i32 0, i32 0), align 4
  store i32 1, i32* @evthread_lock_debugging_enabled_, align 4
  %23 = call i32 @event_global_setup_locks_(i32 0)
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @memcpy(%struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks*, i32) #1

declare dso_local i32 @event_global_setup_locks_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
