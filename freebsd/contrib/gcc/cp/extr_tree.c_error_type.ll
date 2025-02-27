; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_error_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_error_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @error_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TREE_TYPE(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @ARRAY_TYPE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %35

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @ERROR_MARK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %34

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @real_lvalue_p(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @lvalue_type(i32 %22)
  %24 = call i32 @build_reference_type(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @IS_AGGR_TYPE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @lvalue_type(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %16
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @real_lvalue_p(i32) #1

declare dso_local i32 @build_reference_type(i32) #1

declare dso_local i32 @lvalue_type(i32) #1

declare dso_local i64 @IS_AGGR_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
