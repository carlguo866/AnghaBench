; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_letter_to_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_letter_to_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACE_ARGS = common dso_local global i32 0, align 4
@TRACE_EXPANSION = common dso_local global i32 0, align 4
@TRACE_QUOTE = common dso_local global i32 0, align 4
@TRACE_CONT = common dso_local global i32 0, align 4
@TRACE_ID = common dso_local global i32 0, align 4
@TRACE_FILENAME = common dso_local global i32 0, align 4
@TRACE_LINENO = common dso_local global i32 0, align 4
@TRACE_NEWFILE = common dso_local global i32 0, align 4
@TRACE_INPUT = common dso_local global i32 0, align 4
@TRACE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @letter_to_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @letter_to_flag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 97, label %5
    i32 101, label %7
    i32 113, label %9
    i32 99, label %11
    i32 120, label %13
    i32 102, label %15
    i32 108, label %17
    i32 112, label %19
    i32 105, label %21
    i32 116, label %23
    i32 86, label %25
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TRACE_ARGS, align 4
  store i32 %6, i32* %2, align 4
  br label %27

7:                                                ; preds = %1
  %8 = load i32, i32* @TRACE_EXPANSION, align 4
  store i32 %8, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @TRACE_QUOTE, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load i32, i32* @TRACE_CONT, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @TRACE_ID, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @TRACE_FILENAME, align 4
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @TRACE_LINENO, align 4
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @TRACE_NEWFILE, align 4
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @TRACE_INPUT, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @TRACE_ALL, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
