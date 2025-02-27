; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_TXN_SLEEP_DROP_LOCK.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_TXN_SLEEP_DROP_LOCK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @TXN_SLEEP_DROP_LOCK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TXN_SLEEP_DROP_LOCK(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = load i32, i32* @current, align 4
  %5 = call i32 @DECLARE_WAITQUEUE(i32 %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @add_wait_queue(i32* %6, i32* @wait)
  %8 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %9 = call i32 @set_current_state(i32 %8)
  %10 = call i32 (...) @TXN_UNLOCK()
  %11 = call i32 (...) @io_schedule()
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @remove_wait_queue(i32* %12, i32* @wait)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
