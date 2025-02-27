; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_to_stmt_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_to_stmt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATEMENT_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gimplify_to_stmt_list(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = call i32 @gimplify_stmt(i64* %4)
  %6 = load i64*, i64** %2, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call i64 (...) @alloc_stmt_list()
  %11 = load i64*, i64** %2, align 8
  store i64 %10, i64* %11, align 8
  br label %27

12:                                               ; preds = %1
  %13 = load i64*, i64** %2, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @STATEMENT_LIST, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i64*, i64** %2, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  %21 = call i64 (...) @alloc_stmt_list()
  %22 = load i64*, i64** %2, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64*, i64** %2, align 8
  %25 = call i32 @append_to_statement_list(i64 %23, i64* %24)
  br label %26

26:                                               ; preds = %18, %12
  br label %27

27:                                               ; preds = %26, %9
  ret void
}

declare dso_local i32 @gimplify_stmt(i64*) #1

declare dso_local i64 @alloc_stmt_list(...) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @append_to_statement_list(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
