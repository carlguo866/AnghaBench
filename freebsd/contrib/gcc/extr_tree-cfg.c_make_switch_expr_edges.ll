; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_make_switch_expr_edges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_make_switch_expr_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @make_switch_expr_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_switch_expr_edges(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @last_stmt(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @SWITCH_LABELS(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @TREE_VEC_LENGTH(i32 %13)
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @TREE_VEC_ELT(i32 %20, i64 %21)
  %23 = call i32 @CASE_LABEL(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @label_to_block(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @make_edge(i32 %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %15

32:                                               ; preds = %15
  ret void
}

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i32 @SWITCH_LABELS(i32) #1

declare dso_local i64 @TREE_VEC_LENGTH(i32) #1

declare dso_local i32 @CASE_LABEL(i32) #1

declare dso_local i32 @TREE_VEC_ELT(i32, i64) #1

declare dso_local i32 @label_to_block(i32) #1

declare dso_local i32 @make_edge(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
