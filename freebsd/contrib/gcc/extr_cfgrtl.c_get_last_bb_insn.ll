; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_get_last_bb_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_get_last_bb_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_last_bb_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @BB_END(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @tablejump_p(i64 %7, i32* null, i64* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @next_nonnote_insn(i64 %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %24, %12
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @BARRIER_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load i64, i64* %3, align 8
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @next_nonnote_insn(i64 %26)
  store i64 %27, i64* %3, align 8
  br label %15

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i64 @BB_END(i32) #1

declare dso_local i64 @tablejump_p(i64, i32*, i64*) #1

declare dso_local i64 @next_nonnote_insn(i64) #1

declare dso_local i64 @BARRIER_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
