; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_cse_change_cc_mode_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_cse_change_cc_mode_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @cse_change_cc_mode_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cse_change_cc_mode_insns(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @INSN_P(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %28

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @reg_set_p(i64 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %31

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @cse_change_cc_mode_insn(i64 %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @NEXT_INSN(i64 %29)
  store i64 %30, i64* %7, align 8
  br label %9

31:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @reg_set_p(i64, i64) #1

declare dso_local i32 @cse_change_cc_mode_insn(i64, i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
