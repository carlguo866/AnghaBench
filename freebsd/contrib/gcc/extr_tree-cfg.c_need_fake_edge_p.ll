; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_need_fake_edge_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_need_fake_edge_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECF_NORETURN = common dso_local global i32 0, align 4
@ASM_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @need_fake_edge_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_fake_edge_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @get_call_expr_in(i64 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @call_expr_flags(i64 %10)
  %12 = load i32, i32* @ECF_NORETURN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %31

16:                                               ; preds = %9, %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @ASM_EXPR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @ASM_VOLATILE_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @ASM_INPUT_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %25, %16
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @get_call_expr_in(i64) #1

declare dso_local i32 @call_expr_flags(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @ASM_VOLATILE_P(i64) #1

declare dso_local i64 @ASM_INPUT_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
