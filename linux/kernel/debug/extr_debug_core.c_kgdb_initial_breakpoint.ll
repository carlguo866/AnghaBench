; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_initial_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_initial_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kgdb_break_asap = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Waiting for connection from remote gdb...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kgdb_initial_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_initial_breakpoint() #0 {
  store i64 0, i64* @kgdb_break_asap, align 8
  %1 = call i32 @pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @kgdb_breakpoint()
  ret void
}

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @kgdb_breakpoint(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
