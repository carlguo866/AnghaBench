; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_lzma2.h_lzma_state_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_lzma2.h_lzma_state_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATE_SHORTREP_LIT_LIT = common dso_local global i32 0, align 4
@STATE_LIT_LIT = common dso_local global i32 0, align 4
@STATE_LIT_SHORTREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @lzma_state_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_state_literal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @STATE_SHORTREP_LIT_LIT, align 4
  %6 = icmp ule i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @STATE_LIT_LIT, align 4
  %9 = load i32*, i32** %2, align 8
  store i32 %8, i32* %9, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @STATE_LIT_SHORTREP, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %17, 3
  store i32 %18, i32* %16, align 4
  br label %23

19:                                               ; preds = %10
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %21, 6
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
