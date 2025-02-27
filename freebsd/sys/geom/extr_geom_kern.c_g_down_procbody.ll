; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_kern.c_g_down_procbody.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_kern.c_g_down_procbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_down_td = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_down_procbody to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_down_procbody(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @g_down_td, align 4
  %4 = call i32 @thread_lock(i32 %3)
  %5 = load i32, i32* @g_down_td, align 4
  %6 = load i32, i32* @PRIBIO, align 4
  %7 = call i32 @sched_prio(i32 %5, i32 %6)
  %8 = load i32, i32* @g_down_td, align 4
  %9 = call i32 @thread_unlock(i32 %8)
  br label %10

10:                                               ; preds = %10, %1
  %11 = load i32, i32* @g_down_td, align 4
  %12 = call i32 @g_io_schedule_down(i32 %11)
  br label %10
}

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_prio(i32, i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @g_io_schedule_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
