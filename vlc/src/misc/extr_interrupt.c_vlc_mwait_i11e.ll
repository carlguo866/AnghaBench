; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_mwait_i11e.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_mwait_i11e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@vlc_interrupt_var = common dso_local global %struct.TYPE_6__* null, align 8
@vlc_mwait_i11e_wake = common dso_local global i32 0, align 4
@vlc_mwait_i11e_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_mwait_i11e(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vlc_interrupt_var, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @vlc_tick_wait(i32 %11)
  store i32 0, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = call i32 @vlc_cond_init(i32* %5)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* @vlc_mwait_i11e_wake, align 4
  %17 = call i32 @vlc_interrupt_prepare(%struct.TYPE_6__* %15, i32 %16, i32* %5)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load i32, i32* @vlc_mwait_i11e_cleanup, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i32 @vlc_cleanup_push(i32 %21, %struct.TYPE_6__* %22)
  br label %24

24:                                               ; preds = %37, %13
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @vlc_cond_timedwait(i32* %5, i32* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %24

38:                                               ; preds = %35
  %39 = call i32 (...) @vlc_cleanup_pop()
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @vlc_mutex_unlock(i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call i32 @vlc_interrupt_finish(%struct.TYPE_6__* %43)
  store i32 %44, i32* %6, align 4
  %45 = call i32 @vlc_cond_destroy(i32* %5)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @vlc_tick_wait(i32) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i32 @vlc_interrupt_prepare(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cleanup_push(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @vlc_cond_timedwait(i32*, i32*, i32) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_interrupt_finish(%struct.TYPE_6__*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
