; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_interrupt_twice = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"remote_interrupt called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remote_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @remote_interrupt_twice, align 4
  %5 = call i32 @signal(i32 %3, i32 %4)
  %6 = load i64, i64* @remote_debug, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @gdb_stdlog, align 4
  %10 = call i32 @fprintf_unfiltered(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = call i32 (...) @target_stop()
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @target_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
