; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_ptrace_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_ia64_ptrace_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current = common dso_local global i32 0, align 4
@TIF_RESTORE_RSE = common dso_local global i32 0, align 4
@do_sync_rbs = common dso_local global i32 0, align 4
@ia64_sync_user_rbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_ptrace_stop() #0 {
  %1 = load i32, i32* @current, align 4
  %2 = load i32, i32* @TIF_RESTORE_RSE, align 4
  %3 = call i64 @test_and_set_tsk_thread_flag(i32 %1, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @set_notify_resume(i32 %7)
  %9 = load i32, i32* @do_sync_rbs, align 4
  %10 = load i32, i32* @ia64_sync_user_rbs, align 4
  %11 = call i32 @unw_init_running(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %6, %5
  ret void
}

declare dso_local i64 @test_and_set_tsk_thread_flag(i32, i32) #1

declare dso_local i32 @set_notify_resume(i32) #1

declare dso_local i32 @unw_init_running(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
