; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_eof_for_origin.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_eof_for_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_DIFF_LINE_ADDITION = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_ADD_EOFNL = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_DELETION = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_DEL_EOFNL = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_CONTEXT_EOFNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @eof_for_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eof_for_origin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @GIT_DIFF_LINE_ADDITION, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @GIT_DIFF_LINE_ADD_EOFNL, align 4
  store i32 %8, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GIT_DIFF_LINE_DELETION, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @GIT_DIFF_LINE_DEL_EOFNL, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @GIT_DIFF_LINE_CONTEXT_EOFNL, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
