; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_WaitForBackgroundWorkerShutdown.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_WaitForBackgroundWorkerShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BGWH_STOPPED = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_BGWORKER_SHUTDOWN = common dso_local global i32 0, align 4
@BGWH_POSTMASTER_DIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitForBackgroundWorkerShutdown(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @GetBackgroundWorkerPid(i32* %8, i32* %5)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BGWH_STOPPED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %30

14:                                               ; preds = %6
  %15 = load i32, i32* @MyLatch, align 4
  %16 = load i32, i32* @WL_LATCH_SET, align 4
  %17 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WAIT_EVENT_BGWORKER_SHUTDOWN, align 4
  %20 = call i32 @WaitLatch(i32 %15, i32 %18, i32 0, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @BGWH_POSTMASTER_DIED, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @MyLatch, align 4
  %29 = call i32 @ResetLatch(i32 %28)
  br label %6

30:                                               ; preds = %25, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @GetBackgroundWorkerPid(i32*, i32*) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
