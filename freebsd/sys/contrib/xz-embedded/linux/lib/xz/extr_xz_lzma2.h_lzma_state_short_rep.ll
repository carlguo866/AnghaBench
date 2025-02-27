; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_lzma2.h_lzma_state_short_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_lzma2.h_lzma_state_short_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_STATES = common dso_local global i32 0, align 4
@STATE_LIT_SHORTREP = common dso_local global i32 0, align 4
@STATE_NONLIT_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @lzma_state_short_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_state_short_rep(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @LIT_STATES, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @STATE_LIT_SHORTREP, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @STATE_NONLIT_REP, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = load i32*, i32** %2, align 8
  store i32 %12, i32* %13, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
