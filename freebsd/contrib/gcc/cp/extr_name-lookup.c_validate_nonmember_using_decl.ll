; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_validate_nonmember_using_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_validate_nonmember_using_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"%qT is not a namespace\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"a using-declaration cannot specify a template-id.  Try %<using %D%>\00", align 1
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"namespace %qD not allowed in using-declaration\00", align 1
@SCOPE_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @validate_nonmember_using_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validate_nonmember_using_decl(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @TYPE_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* @NULL_TREE, align 8
  store i64 %14, i64* %4, align 8
  br label %64

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @error_mark_node, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %4, align 8
  br label %64

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @NULL_TREE, align 8
  store i64 %30, i64* %4, align 8
  br label %64

31:                                               ; preds = %22
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @NAMESPACE_DECL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @NULL_TREE, align 8
  store i64 %39, i64* %4, align 8
  br label %64

40:                                               ; preds = %31
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @SCOPE_REF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 0)
  %48 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* @NULL_TREE, align 8
  store i64 %49, i64* %4, align 8
  br label %64

50:                                               ; preds = %40
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @is_overloaded_fn(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @get_first_fn(i64 %55)
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @DECL_P(i64 %58)
  %60 = call i32 @gcc_assert(i32 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @push_using_decl(i64 %61, i64 %62)
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %57, %45, %36, %27, %19, %11
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @is_overloaded_fn(i64) #1

declare dso_local i64 @get_first_fn(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @push_using_decl(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
