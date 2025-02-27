; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_interrupt_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_interrupt_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [77 x i8] c"Interrupted while waiting for the program.\0AGive up (and stop debugging it)? \00", align 1
@RETURN_QUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @interrupt_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_query() #0 {
  %1 = call i32 (...) @target_terminal_ours()
  %2 = call i64 @query(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i32 (...) @target_mourn_inferior()
  %6 = load i32, i32* @RETURN_QUIT, align 4
  %7 = call i32 @throw_exception(i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = call i32 (...) @target_terminal_inferior()
  ret void
}

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i64 @query(i8*) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @throw_exception(i32) #1

declare dso_local i32 @target_terminal_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
