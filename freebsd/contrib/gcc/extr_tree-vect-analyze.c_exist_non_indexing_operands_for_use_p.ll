; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_exist_non_indexing_operands_for_use_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_exist_non_indexing_operands_for_use_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @exist_non_indexing_operands_for_use_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exist_non_indexing_operands_for_use_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @vinfo_for_stmt(i64 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @STMT_VINFO_DATA_REF(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @TREE_OPERAND(i64 %15, i32 0)
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @SSA_NAME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TREE_OPERAND(i64 %22, i32 1)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @SSA_NAME, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %28, %20, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @vinfo_for_stmt(i64) #1

declare dso_local i32 @STMT_VINFO_DATA_REF(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
