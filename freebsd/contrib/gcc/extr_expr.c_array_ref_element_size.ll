; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_array_ref_element_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_array_ref_element_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sizetype = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @array_ref_element_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @TREE_OPERAND(i64 %6, i32 3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @TREE_OPERAND(i64 %8, i32 0)
  %10 = call i64 @TREE_TYPE(i64 %9)
  %11 = call i64 @TREE_TYPE(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TREE_TYPE(i64 %15)
  %17 = load i64, i64* @sizetype, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i64, i64* @sizetype, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @fold_convert(i64 %20, i64 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* @MULT_EXPR, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @TYPE_ALIGN_UNIT(i64 %26)
  %28 = call i32 @size_int(i32 %27)
  %29 = call i64 @size_binop(i32 %24, i64 %25, i32 %28)
  store i64 %29, i64* %2, align 8
  br label %35

30:                                               ; preds = %1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @TYPE_SIZE_UNIT(i64 %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i32 %32, i64 %33)
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @size_binop(i32, i64, i32) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i32 @TYPE_ALIGN_UNIT(i64) #1

declare dso_local i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i32, i64) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
