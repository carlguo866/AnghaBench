; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_unix.c_use_xterm_mouse.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_unix.c_use_xterm_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ttym_flags = common dso_local global i64 0, align 8
@TTYM_SGR = common dso_local global i64 0, align 8
@TTYM_URXVT = common dso_local global i64 0, align 8
@TTYM_XTERM2 = common dso_local global i64 0, align 8
@TTYM_XTERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @use_xterm_mouse() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @ttym_flags, align 8
  %3 = load i64, i64* @TTYM_SGR, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 4, i32* %1, align 4
  br label %22

6:                                                ; preds = %0
  %7 = load i64, i64* @ttym_flags, align 8
  %8 = load i64, i64* @TTYM_URXVT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 3, i32* %1, align 4
  br label %22

11:                                               ; preds = %6
  %12 = load i64, i64* @ttym_flags, align 8
  %13 = load i64, i64* @TTYM_XTERM2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 2, i32* %1, align 4
  br label %22

16:                                               ; preds = %11
  %17 = load i64, i64* @ttym_flags, align 8
  %18 = load i64, i64* @TTYM_XTERM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %22

21:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %20, %15, %10, %5
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
