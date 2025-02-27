; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fault_table = common dso_local global i32* null, align 8
@fault_code = common dso_local global i64 0, align 8
@FAULT_CODE_UNITS = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** @fault_table, align 8
  %6 = load i64, i64* @fault_code, align 8
  %7 = load i64, i64* @FAULT_CODE_UNITS, align 8
  %8 = udiv i64 %6, %7
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @WSETSTOP(i32 %4, i32 %10)
  %12 = load i32, i32* @inferior_ptid, align 4
  %13 = call i32 @PIDGET(i32 %12)
  ret i32 %13
}

declare dso_local i32 @WSETSTOP(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
