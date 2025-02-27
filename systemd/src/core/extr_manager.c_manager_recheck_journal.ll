; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_recheck_journal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_recheck_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manager_recheck_journal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @assert(i32* %3)
  %5 = call i32 (...) @getpid_cached()
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @MANAGER_IS_RELOADING(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %21

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @manager_journal_is_running(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @log_set_prohibit_ipc(i32 %18)
  %20 = call i32 (...) @log_open()
  br label %21

21:                                               ; preds = %13, %12, %7
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i64 @MANAGER_IS_RELOADING(i32*) #1

declare dso_local i32 @log_set_prohibit_ipc(i32) #1

declare dso_local i32 @manager_journal_is_running(i32*) #1

declare dso_local i32 @log_open(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
